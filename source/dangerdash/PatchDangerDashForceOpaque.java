import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.ClassNode;
import org.objectweb.asm.tree.InsnList;
import org.objectweb.asm.tree.InsnNode;
import org.objectweb.asm.tree.IincInsnNode;
import org.objectweb.asm.tree.IntInsnNode;
import org.objectweb.asm.tree.JumpInsnNode;
import org.objectweb.asm.tree.LabelNode;
import org.objectweb.asm.tree.LdcInsnNode;
import org.objectweb.asm.tree.MethodInsnNode;
import org.objectweb.asm.tree.MethodNode;
import org.objectweb.asm.tree.VarInsnNode;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

public final class PatchDangerDashForceOpaque {
    private static final String TARGET_ENTRY = "l.class";
    private static final String TARGET_METHOD_NAME = "a";
    private static final String TARGET_METHOD_DESC = "(IIIIIIIII)V";
    private static final String DG_OWNER = "com/nokia/mid/ui/DirectGraphics";
    private static final String DG_NAME = "drawPixels";
    private static final String DG_DESC = "([IZIIIIIIII)V";
    private static final String HELPER = "forceOpaque";
    private static final String HELPER_DESC = "([I)[I";

    private static byte[] patchClass(byte[] input) {
        ClassReader reader = new ClassReader(input);
        ClassNode node = new ClassNode();
        reader.accept(node, 0);
        int changed = 0;
        for (MethodNode method : node.methods) {
            if (!TARGET_METHOD_NAME.equals(method.name) || !TARGET_METHOD_DESC.equals(method.desc)) continue;
            InsnList insns = method.instructions;
            for (AbstractInsnNode insn : insns.toArray()) {
                if (!(insn instanceof MethodInsnNode)) continue;
                MethodInsnNode call = (MethodInsnNode) insn;
                if (!DG_OWNER.equals(call.owner) || !DG_NAME.equals(call.name) || !DG_DESC.equals(call.desc)) continue;
                AbstractInsnNode cursor = call.getPrevious();
                VarInsnNode pixelsLoad = null;
                int steps = 0;
                while (cursor != null && steps++ < 24) {
                    if (cursor instanceof VarInsnNode && cursor.getOpcode() == Opcodes.ALOAD
                            && ((VarInsnNode) cursor).var == 19) {
                        pixelsLoad = (VarInsnNode) cursor;
                        break;
                    }
                    cursor = cursor.getPrevious();
                }
                if (pixelsLoad == null) {
                    throw new IllegalStateException("missing expected ALOAD 19 before drawPixels");
                }
                insns.insert(pixelsLoad, new MethodInsnNode(Opcodes.INVOKESTATIC,
                        node.name, HELPER, HELPER_DESC, false));
                changed++;
            }
        }
        if (changed != 2) throw new IllegalStateException("Expected exactly 2 patched drawPixels sites, found " + changed);
        for (MethodNode method : node.methods) {
            if (HELPER.equals(method.name) && HELPER_DESC.equals(method.desc)) {
                throw new IllegalStateException("helper already exists");
            }
        }
        node.methods.add(makeHelper());
        ClassWriter writer = new ClassWriter(0);
        node.accept(writer);
        System.out.println("patched drawPixels pixel arrays=" + changed + ", added forceOpaque helper");
        return writer.toByteArray();
    }

    private static MethodNode makeHelper() {
        MethodNode m = new MethodNode(Opcodes.ACC_PRIVATE | Opcodes.ACC_STATIC, HELPER, HELPER_DESC, null, null);
        InsnList x = m.instructions;
        LabelNode nonNull = new LabelNode();
        LabelNode loop = new LabelNode();
        LabelNode done = new LabelNode();
        x.add(new VarInsnNode(Opcodes.ALOAD, 0));
        x.add(new JumpInsnNode(Opcodes.IFNONNULL, nonNull));
        x.add(new InsnNode(Opcodes.ACONST_NULL));
        x.add(new InsnNode(Opcodes.ARETURN));
        x.add(nonNull);
        x.add(new InsnNode(Opcodes.ICONST_0));
        x.add(new VarInsnNode(Opcodes.ISTORE, 1));
        x.add(loop);
        x.add(new VarInsnNode(Opcodes.ILOAD, 1));
        x.add(new VarInsnNode(Opcodes.ALOAD, 0));
        x.add(new InsnNode(Opcodes.ARRAYLENGTH));
        x.add(new JumpInsnNode(Opcodes.IF_ICMPGE, done));
        x.add(new VarInsnNode(Opcodes.ALOAD, 0));
        x.add(new VarInsnNode(Opcodes.ILOAD, 1));
        x.add(new InsnNode(Opcodes.DUP2));
        x.add(new InsnNode(Opcodes.IALOAD));
        x.add(new LdcInsnNode(0xFF000000));
        x.add(new InsnNode(Opcodes.IOR));
        x.add(new InsnNode(Opcodes.IASTORE));
        x.add(new IincInsnNode(1, 1));
        x.add(new JumpInsnNode(Opcodes.GOTO, loop));
        x.add(done);
        x.add(new VarInsnNode(Opcodes.ALOAD, 0));
        x.add(new InsnNode(Opcodes.ARETURN));
        m.maxStack = 4;
        m.maxLocals = 2;
        return m;
    }

    private static void copyEntry(ZipFile zip, ZipEntry source, ZipOutputStream out, byte[] replacement) throws IOException {
        ZipEntry dest = new ZipEntry(source.getName());
        dest.setTime(source.getTime());
        if (source.getComment() != null) dest.setComment(source.getComment());
        if (source.getExtra() != null) dest.setExtra(source.getExtra());
        dest.setMethod(ZipEntry.DEFLATED);
        out.putNextEntry(dest);
        if (replacement != null) out.write(replacement);
        else {
            try (InputStream in = new BufferedInputStream(zip.getInputStream(source))) {
                byte[] buf = new byte[65536]; int n;
                while ((n = in.read(buf)) >= 0) { if (n > 0) out.write(buf, 0, n); }
            }
        }
        out.closeEntry();
    }

    public static void main(String[] args) throws Exception {
        if (args.length != 2) throw new IllegalArgumentException("usage: input.jar output.jar");
        Path input = Paths.get(args[0]); Path output = Paths.get(args[1]);
        Files.createDirectories(output.getParent());
        byte[] patched;
        try (ZipFile zip = new ZipFile(input.toFile())) {
            ZipEntry target = zip.getEntry(TARGET_ENTRY);
            if (target == null) throw new IOException("missing " + TARGET_ENTRY);
            try (InputStream in = new BufferedInputStream(zip.getInputStream(target))) { patched = patchClass(in.readAllBytes()); }
            Set<String> names = new HashSet<>();
            try (OutputStream raw = Files.newOutputStream(output);
                 ZipOutputStream out = new ZipOutputStream(new BufferedOutputStream(raw))) {
                Enumeration<? extends ZipEntry> entries = zip.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry source = entries.nextElement();
                    if (!names.add(source.getName())) throw new IOException("duplicate entry " + source.getName());
                    copyEntry(zip, source, out, TARGET_ENTRY.equals(source.getName()) ? patched : null);
                }
            }
        }
        System.out.println("output=" + output);
    }
}
