import java.io.*;
import java.nio.file.*;
import java.security.MessageDigest;
import java.util.*;
import java.util.zip.*;
import org.objectweb.asm.*;
import org.objectweb.asm.tree.*;

/**
 * Danger Dash-only experiment: rewrite the two drawPixels calls in the
 * secondary renderer a(IIIIIIIZZ)V. The public renderer is intentionally
 * untouched because it was already tested independently.
 */
public final class PatchDangerDashPrivateGraphicsDrawRGB {
    private static final String TARGET_CLASS = "l.class";
    private static final String TARGET_METHOD = "a";
    private static final String TARGET_DESC = "(IIIIIIZZ)V";
    private static final String DG_OWNER = "com/nokia/mid/ui/DirectGraphics";
    private static final String DU_OWNER = "com/nokia/mid/ui/DirectUtils";
    private static final String DRAWPIX_DESC = "([IZIIIIIIII)V";
    private static final String DRAWRGB_OWNER = "javax/microedition/lcdui/Graphics";
    private static final String DRAWRGB_DESC = "([IIIIIIIZ)V";
    private static final int PIXELS_LOCAL = 14;

    private PatchDangerDashPrivateGraphicsDrawRGB() {}

    private static boolean isIntConst(AbstractInsnNode n, int value) {
        if (n == null) return false;
        int op = n.getOpcode();
        if (op >= Opcodes.ICONST_M1 && op <= Opcodes.ICONST_5) {
            return op - Opcodes.ICONST_0 == value;
        }
        if (n instanceof IntInsnNode) {
            IntInsnNode i = (IntInsnNode)n;
            return (op == Opcodes.BIPUSH || op == Opcodes.SIPUSH) && i.operand == value;
        }
        return false;
    }

    private static boolean isVar(AbstractInsnNode n, int opcode, int var) {
        return n instanceof VarInsnNode && n.getOpcode() == opcode && ((VarInsnNode)n).var == var;
    }

    private static byte[] transformed(byte[] in) throws IOException {
        ClassNode cn = new ClassNode(Opcodes.ASM9);
        new ClassReader(in).accept(cn, 0);
        int patched = 0;
        for (MethodNode mn : cn.methods) {
            if (!TARGET_METHOD.equals(mn.name) || !TARGET_DESC.equals(mn.desc)) continue;
            AbstractInsnNode[] nodes = mn.instructions.toArray();
            for (AbstractInsnNode call : nodes) {
                if (!(call instanceof MethodInsnNode)) continue;
                MethodInsnNode mi = (MethodInsnNode)call;
                if (mi.getOpcode() != Opcodes.INVOKEINTERFACE || !DG_OWNER.equals(mi.owner)
                        || !"drawPixels".equals(mi.name) || !DRAWPIX_DESC.equals(mi.desc)) continue;

                AbstractInsnNode format = call.getPrevious();
                AbstractInsnNode manipulation = format == null ? null : format.getPrevious();
                if (!isIntConst(format, 8888) || !isIntConst(manipulation, 0)) {
                    throw new IllegalStateException("unexpected drawPixels tail operands");
                }
                AbstractInsnNode beforeManipulation = manipulation.getPrevious();
                mn.instructions.remove(format);
                mn.instructions.remove(manipulation);

                AbstractInsnNode pixelsLoad = null;
                AbstractInsnNode p = beforeManipulation;
                while (p != null) {
                    if (isVar(p, Opcodes.ALOAD, PIXELS_LOCAL)) {
                        pixelsLoad = p;
                        break;
                    }
                    p = p.getPrevious();
                }
                if (pixelsLoad == null || !isIntConst(pixelsLoad.getNext(), 1)) {
                    throw new IllegalStateException("expected pixels ALOAD 14 followed by transparency=true");
                }
                mn.instructions.remove(pixelsLoad.getNext());

                AbstractInsnNode dgCall = null;
                p = pixelsLoad.getPrevious();
                while (p != null) {
                    if (p instanceof MethodInsnNode) {
                        MethodInsnNode prev = (MethodInsnNode)p;
                        if (prev.getOpcode() == Opcodes.INVOKESTATIC && DU_OWNER.equals(prev.owner)
                                && "getDirectGraphics".equals(prev.name)) {
                            dgCall = p;
                            break;
                        }
                    }
                    p = p.getPrevious();
                }
                if (dgCall == null) throw new IllegalStateException("DirectUtils.getDirectGraphics not found");
                mn.instructions.remove(dgCall);

                // The original Graphics receiver remains on the stack;
                // drawRGB consumes Graphics, pixels, offset, scanlength,
                // x, y, width, height, processAlpha.
                mn.instructions.insertBefore(call, new InsnNode(Opcodes.ICONST_1));
                mi.setOpcode(Opcodes.INVOKEVIRTUAL);
                mi.owner = DRAWRGB_OWNER;
                mi.name = "drawRGB";
                mi.desc = DRAWRGB_DESC;
                mi.itf = false;
                patched++;
            }
        }
        if (patched != 2) throw new IllegalStateException("expected 2 private-helper patches, got " + patched);
        ClassWriter cw = new ClassWriter(0);
        cn.accept(cw);
        return cw.toByteArray();
    }

    private static byte[] readEntry(ZipFile z, String name) throws IOException {
        ZipEntry e = z.getEntry(name);
        if (e == null) throw new FileNotFoundException(name);
        try (InputStream is = z.getInputStream(e); ByteArrayOutputStream b = new ByteArrayOutputStream()) {
            is.transferTo(b);
            return b.toByteArray();
        }
    }

    public static void main(String[] args) throws Exception {
        if (args.length != 2) throw new IllegalArgumentException("usage: input.jar output.jar");
        Path input = Paths.get(args[0]);
        Path output = Paths.get(args[1]);
        Files.createDirectories(output.toAbsolutePath().getParent());
        try (ZipFile z = new ZipFile(input.toFile());
             ZipOutputStream out = new ZipOutputStream(new BufferedOutputStream(Files.newOutputStream(output)))) {
            Enumeration<? extends ZipEntry> en = z.entries();
            while (en.hasMoreElements()) {
                ZipEntry old = en.nextElement();
                ZipEntry ne = new ZipEntry(old.getName());
                ne.setTime(0L);
                out.putNextEntry(ne);
                byte[] data = TARGET_CLASS.equals(old.getName())
                        ? transformed(readEntry(z, old.getName()))
                        : readEntry(z, old.getName());
                out.write(data);
                out.closeEntry();
            }
        }
        System.out.println("created " + output + " sha256=" + sha256(output));
    }

    private static String sha256(Path p) throws Exception {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        try (InputStream is = Files.newInputStream(p)) {
            byte[] b = new byte[65536];
            int n;
            while ((n = is.read(b)) >= 0) if (n > 0) md.update(b, 0, n);
        }
        StringBuilder s = new StringBuilder();
        for (byte b : md.digest()) s.append(String.format("%02x", b));
        return s.toString();
    }
}
