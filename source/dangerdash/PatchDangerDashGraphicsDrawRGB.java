import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.zip.*;
import org.objectweb.asm.*;
import org.objectweb.asm.tree.*;

/**
 * Experimental Danger Dash-only transformer.
 *
 * In l.a(IIIIIIIII)V, replace the two DirectGraphics.drawPixels(int[],...)
 * calls with Graphics.drawRGB(int[],...).  The drawPixels call sites use
 * manipulation=0 and format=8888, so the six geometry/stride integers can
 * be preserved.  The DirectGraphics transparency argument is removed and
 * drawRGB processAlpha=true is supplied explicitly.
 */
public final class PatchDangerDashGraphicsDrawRGB {
    private static final String TARGET_CLASS = "l.class";
    private static final String TARGET_METHOD = "a";
    private static final String TARGET_DESC = "(IIIIIIIII)V";
    private static final String DG_OWNER = "com/nokia/mid/ui/DirectGraphics";
    private static final String DU_OWNER = "com/nokia/mid/ui/DirectUtils";
    private static final String DRAWPIX_DESC = "([IZIIIIIIII)V";
    private static final String DRAWRGB_OWNER = "javax/microedition/lcdui/Graphics";
    private static final String DRAWRGB_DESC = "([IIIIIIIZ)V";

    private PatchDangerDashGraphicsDrawRGB() {}

    private static boolean isIntConst(AbstractInsnNode n, int value) {
        if (n == null) return false;
        if (n.getOpcode() >= Opcodes.ICONST_M1 && n.getOpcode() <= Opcodes.ICONST_5) {
            return n.getOpcode() - Opcodes.ICONST_0 == value;
        }
        if (n instanceof IntInsnNode) {
            IntInsnNode i = (IntInsnNode) n;
            return (i.getOpcode() == Opcodes.BIPUSH || i.getOpcode() == Opcodes.SIPUSH) && i.operand == value;
        }
        return false;
    }

    private static boolean isVar(AbstractInsnNode n, int opcode, int var) {
        return n instanceof VarInsnNode && n.getOpcode() == opcode && ((VarInsnNode) n).var == var;
    }

    private static int transformClass(byte[] in, byte[] out) throws IOException {
        ClassNode cn = new ClassNode(Opcodes.ASM9);
        new ClassReader(in).accept(cn, 0);
        int patched = 0;
        for (MethodNode mn : cn.methods) {
            if (!TARGET_METHOD.equals(mn.name) || !TARGET_DESC.equals(mn.desc)) continue;
            AbstractInsnNode[] nodes = mn.instructions.toArray();
            for (AbstractInsnNode call : nodes) {
                if (!(call instanceof MethodInsnNode)) continue;
                MethodInsnNode mi = (MethodInsnNode) call;
                if (mi.getOpcode() != Opcodes.INVOKEINTERFACE ||
                    !DG_OWNER.equals(mi.owner) ||
                    !"drawPixels".equals(mi.name) ||
                    !DRAWPIX_DESC.equals(mi.desc)) continue;

                AbstractInsnNode format = call.getPrevious();
                AbstractInsnNode manipulation = format == null ? null : format.getPrevious();
                if (!isIntConst(format, 8888) || !isIntConst(manipulation, 0)) {
                    throw new IllegalStateException("drawPixels target lacks expected manipulation=0/format=8888");
                }
                AbstractInsnNode beforeManipulation = manipulation.getPrevious();
                mn.instructions.remove(format);
                mn.instructions.remove(manipulation);

                AbstractInsnNode pixelsLoad = null;
                AbstractInsnNode p = beforeManipulation;
                while (p != null) {
                    if (isVar(p, Opcodes.ALOAD, 19)) {
                        pixelsLoad = p;
                        break;
                    }
                    p = p.getPrevious();
                }
                if (pixelsLoad == null || !isIntConst(pixelsLoad.getNext(), 1)) {
                    throw new IllegalStateException("drawPixels target lacks expected transparency=true after ALOAD 19");
                }
                // Remove the old DirectGraphics transparency argument.
                mn.instructions.remove(pixelsLoad.getNext());

                AbstractInsnNode dgCall = null;
                p = pixelsLoad.getPrevious();
                while (p != null) {
                    if (p instanceof MethodInsnNode) {
                        MethodInsnNode prev = (MethodInsnNode) p;
                        if (prev.getOpcode() == Opcodes.INVOKESTATIC &&
                            DU_OWNER.equals(prev.owner) &&
                            "getDirectGraphics".equals(prev.name)) {
                            dgCall = p;
                            break;
                        }
                    }
                    p = p.getPrevious();
                }
                if (dgCall == null) {
                    throw new IllegalStateException("DirectUtils.getDirectGraphics call not found");
                }
                // Keep the original Graphics object on the operand stack.
                mn.instructions.remove(dgCall);

                // drawRGB consumes Graphics, int[], six ints and processAlpha.
                mn.instructions.insertBefore(call, new InsnNode(Opcodes.ICONST_1));
                mi.setOpcode(Opcodes.INVOKEVIRTUAL);
                mi.owner = DRAWRGB_OWNER;
                mi.name = "drawRGB";
                mi.desc = DRAWRGB_DESC;
                mi.itf = false;
                patched++;
            }
        }
        if (patched != 2) throw new IllegalStateException("expected exactly 2 drawPixels patches, got " + patched);
        ClassWriter cw = new ClassWriter(0);
        cn.accept(cw);
        byte[] result = cw.toByteArray();
        System.arraycopy(result, 0, out, 0, 0); // keep compiler from treating out as unused
        return result.length;
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
                MethodInsnNode mi = (MethodInsnNode) call;
                if (mi.getOpcode() != Opcodes.INVOKEINTERFACE || !DG_OWNER.equals(mi.owner) ||
                    !"drawPixels".equals(mi.name) || !DRAWPIX_DESC.equals(mi.desc)) continue;
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
                    if (isVar(p, Opcodes.ALOAD, 19)) { pixelsLoad = p; break; }
                    p = p.getPrevious();
                }
                if (pixelsLoad == null || !isIntConst(pixelsLoad.getNext(), 1)) {
                    throw new IllegalStateException("expected ALOAD 19, ICONST_1");
                }
                mn.instructions.remove(pixelsLoad.getNext());
                AbstractInsnNode dgCall = null;
                p = pixelsLoad.getPrevious();
                while (p != null) {
                    if (p instanceof MethodInsnNode) {
                        MethodInsnNode prev = (MethodInsnNode) p;
                        if (prev.getOpcode() == Opcodes.INVOKESTATIC && DU_OWNER.equals(prev.owner) &&
                            "getDirectGraphics".equals(prev.name)) { dgCall = p; break; }
                    }
                    p = p.getPrevious();
                }
                if (dgCall == null) throw new IllegalStateException("DirectUtils call not found");
                mn.instructions.remove(dgCall);
                mn.instructions.insertBefore(call, new InsnNode(Opcodes.ICONST_1));
                mi.setOpcode(Opcodes.INVOKEVIRTUAL);
                mi.owner = DRAWRGB_OWNER;
                mi.name = "drawRGB";
                mi.desc = DRAWRGB_DESC;
                mi.itf = false;
                patched++;
            }
        }
        if (patched != 2) throw new IllegalStateException("expected exactly 2 drawPixels patches, got " + patched);
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
                byte[] data;
                if (TARGET_CLASS.equals(old.getName())) data = transformed(readEntry(z, old.getName()));
                else data = readEntry(z, old.getName());
                out.write(data);
                out.closeEntry();
            }
        }
        System.out.println("created " + output + " sha256=" + sha256(output));
    }

    private static String sha256(Path p) throws Exception {
        java.security.MessageDigest md = java.security.MessageDigest.getInstance("SHA-256");
        try (InputStream is = Files.newInputStream(p)) {
            byte[] b = new byte[65536]; int n;
            while ((n = is.read(b)) >= 0) if (n > 0) md.update(b, 0, n);
        }
        StringBuilder s = new StringBuilder();
        for (byte b : md.digest()) s.append(String.format("%02x", b));
        return s.toString();
    }
}

/* Note: transformClass is intentionally unused; transformed() is the single production path. */
