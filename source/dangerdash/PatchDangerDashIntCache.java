import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.jar.*;
import java.util.zip.*;

import org.objectweb.asm.*;

public final class PatchDangerDashIntCache {
    private static final String TARGET_CLASS = "g.class";
    private static final String HELPER = "__cbCopyIntCacheToScratch";

    private static byte[] patchG(byte[] input) {
        ClassReader cr = new ClassReader(input);
        ClassWriter cw = new ClassWriter(cr, ClassWriter.COMPUTE_FRAMES | ClassWriter.COMPUTE_MAXS);
        ClassVisitor cv = new ClassVisitor(Opcodes.ASM9, cw) {
            boolean sawAccessor = false;
            boolean sawHelper = false;

            @Override
            public MethodVisitor visitMethod(int access, String name, String descriptor,
                                             String signature, String[] exceptions) {
                MethodVisitor mv = super.visitMethod(access, name, descriptor, signature, exceptions);
                if (name.equals("o") && descriptor.equals("(I)[I")) {
                    sawAccessor = true;
                    return new MethodVisitor(Opcodes.ASM9, mv) {
                        @Override
                        public void visitInsn(int opcode) {
                            if (opcode == Opcodes.ARETURN) {
                                super.visitMethodInsn(Opcodes.INVOKESTATIC, "g", HELPER,
                                        "([I)[I", false);
                            }
                            super.visitInsn(opcode);
                        }
                    };
                }
                return mv;
            }

            @Override
            public void visitEnd() {
                if (!sawAccessor) {
                    throw new IllegalStateException("target accessor g.o(I)[I not found");
                }
                MethodVisitor mv = super.visitMethod(Opcodes.ACC_PRIVATE | Opcodes.ACC_STATIC | Opcodes.ACC_SYNTHETIC,
                        HELPER, "([I)[I", null, null);
                mv.visitCode();
                Label returnSource = new Label();
                Label done = new Label();
                mv.visitVarInsn(Opcodes.ALOAD, 0);
                mv.visitJumpInsn(Opcodes.IFNULL, returnSource);
                mv.visitFieldInsn(Opcodes.GETSTATIC, "g", "a", "[I");
                mv.visitVarInsn(Opcodes.ASTORE, 1);
                mv.visitVarInsn(Opcodes.ALOAD, 1);
                mv.visitJumpInsn(Opcodes.IFNULL, returnSource);
                mv.visitVarInsn(Opcodes.ALOAD, 0);
                mv.visitInsn(Opcodes.ARRAYLENGTH);
                mv.visitVarInsn(Opcodes.ALOAD, 1);
                mv.visitInsn(Opcodes.ARRAYLENGTH);
                mv.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/Math", "min", "(II)I", false);
                mv.visitVarInsn(Opcodes.ISTORE, 2);
                mv.visitVarInsn(Opcodes.ALOAD, 0);
                mv.visitInsn(Opcodes.ICONST_0);
                mv.visitVarInsn(Opcodes.ALOAD, 1);
                mv.visitInsn(Opcodes.ICONST_0);
                mv.visitVarInsn(Opcodes.ILOAD, 2);
                mv.visitMethodInsn(Opcodes.INVOKESTATIC, "java/lang/System", "arraycopy",
                        "(Ljava/lang/Object;ILjava/lang/Object;II)V", false);
                mv.visitLabel(done);
                mv.visitLabel(returnSource);
                mv.visitVarInsn(Opcodes.ALOAD, 0);
                mv.visitInsn(Opcodes.ARETURN);
                mv.visitMaxs(0, 0);
                mv.visitEnd();
                sawHelper = true;
                super.visitEnd();
            }
        };
        cr.accept(cv, 0);
        return cw.toByteArray();
    }

    private static boolean isSignature(String name) {
        String upper = name.toUpperCase(Locale.US);
        return upper.startsWith("META-INF/") &&
                (upper.endsWith(".SF") || upper.endsWith(".RSA") ||
                 upper.endsWith(".DSA") || upper.endsWith(".EC"));
    }

    private static void transform(Path input, Path output) throws IOException {
        Files.createDirectories(output.toAbsolutePath().getParent());
        try (JarFile jar = new JarFile(input.toFile());
             JarOutputStream out = new JarOutputStream(Files.newOutputStream(output))) {
            boolean patched = false;
            Enumeration<JarEntry> entries = jar.entries();
            while (entries.hasMoreElements()) {
                JarEntry entry = entries.nextElement();
                String name = entry.getName();
                if (isSignature(name)) continue;
                byte[] data;
                try (InputStream in = jar.getInputStream(entry)) {
                    data = in.readAllBytes();
                }
                if (name.equals(TARGET_CLASS)) {
                    data = patchG(data);
                    patched = true;
                }
                JarEntry outEntry = new JarEntry(name);
                outEntry.setTime(entry.getTime());
                out.putNextEntry(outEntry);
                out.write(data);
                out.closeEntry();
            }
            if (!patched) throw new IllegalStateException("g.class missing");
        }
    }

    public static void main(String[] args) throws Exception {
        if (args.length != 2) throw new IllegalArgumentException("usage: input.jar output.jar");
        transform(Paths.get(args[0]), Paths.get(args[1]));
    }
}
