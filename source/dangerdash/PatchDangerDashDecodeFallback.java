import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Enumeration;
import java.util.Locale;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.JarOutputStream;

import org.objectweb.asm.ClassReader;
import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;

/**
 * Experimental Danger Dash-only JAR transformer.
 *
 * Hypothesis: the renderer asks g.o(frame) for an already-materialized int[]
 * cache, gets null, and never invokes g.y(frame), the lazy resource decoder
 * that can materialize the static pixel buffer. The patch exposes g.y within
 * the default package and redirects exactly the two renderer call-sites in
 * l.class from o(I)[I to y(I)[I.
 */
public final class PatchDangerDashDecodeFallback {
    private static final String G_CLASS = "g.class";
    private static final String L_CLASS = "l.class";
    private static final String DESC = "(I)[I";

    private static byte[] patchG(byte[] input) {
        ClassReader cr = new ClassReader(input);
        ClassWriter cw = new ClassWriter(cr, ClassWriter.COMPUTE_FRAMES | ClassWriter.COMPUTE_MAXS);
        final boolean[] found = {false};
        ClassVisitor cv = new ClassVisitor(Opcodes.ASM9, cw) {
            @Override
            public MethodVisitor visitMethod(int access, String name, String descriptor,
                                             String signature, String[] exceptions) {
                if (name.equals("y") && descriptor.equals(DESC)) {
                    if ((access & Opcodes.ACC_PRIVATE) == 0) {
                        throw new IllegalStateException("g.y(I)[I is not private as expected: " + access);
                    }
                    found[0] = true;
                    access &= ~Opcodes.ACC_PRIVATE;
                    access &= ~Opcodes.ACC_PROTECTED;
                    access &= ~Opcodes.ACC_PUBLIC;
                    access |= Opcodes.ACC_FINAL;
                }
                return super.visitMethod(access, name, descriptor, signature, exceptions);
            }
        };
        cr.accept(cv, 0);
        if (!found[0]) throw new IllegalStateException("g.y(I)[I not found");
        return cw.toByteArray();
    }

    private static byte[] patchL(byte[] input) {
        ClassReader cr = new ClassReader(input);
        ClassWriter cw = new ClassWriter(cr, ClassWriter.COMPUTE_FRAMES | ClassWriter.COMPUTE_MAXS);
        final int[] replaced = {0};
        ClassVisitor cv = new ClassVisitor(Opcodes.ASM9, cw) {
            @Override
            public MethodVisitor visitMethod(int access, String name, String descriptor,
                                             String signature, String[] exceptions) {
                MethodVisitor mv = super.visitMethod(access, name, descriptor, signature, exceptions);
                return new MethodVisitor(Opcodes.ASM9, mv) {
                    @Override
                    public void visitMethodInsn(int opcode, String owner, String methodName,
                                                 String methodDesc, boolean isInterface) {
                        if (opcode == Opcodes.INVOKEVIRTUAL && owner.equals("g")
                                && methodName.equals("o") && methodDesc.equals(DESC)) {
                            replaced[0]++;
                            super.visitMethodInsn(Opcodes.INVOKEVIRTUAL, "g", "y", DESC, false);
                        } else {
                            super.visitMethodInsn(opcode, owner, methodName, methodDesc, isInterface);
                        }
                    }
                };
            }
        };
        cr.accept(cv, 0);
        if (replaced[0] != 2) {
            throw new IllegalStateException("expected exactly 2 g.o(I)[I renderer call-sites, got " + replaced[0]);
        }
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
            boolean sawG = false;
            boolean sawL = false;
            Enumeration<JarEntry> entries = jar.entries();
            while (entries.hasMoreElements()) {
                JarEntry entry = entries.nextElement();
                String name = entry.getName();
                if (isSignature(name)) continue;
                byte[] data;
                try (var in = jar.getInputStream(entry)) {
                    data = in.readAllBytes();
                }
                if (name.equals(G_CLASS)) {
                    data = patchG(data);
                    sawG = true;
                } else if (name.equals(L_CLASS)) {
                    data = patchL(data);
                    sawL = true;
                }
                JarEntry outEntry = new JarEntry(name);
                outEntry.setTime(entry.getTime());
                out.putNextEntry(outEntry);
                out.write(data);
                out.closeEntry();
            }
            if (!sawG || !sawL) throw new IllegalStateException("g.class/l.class missing");
        }
    }

    public static void main(String[] args) throws Exception {
        if (args.length != 2) throw new IllegalArgumentException("usage: input.jar output.jar");
        transform(Paths.get(args[0]), Paths.get(args[1]));
    }
}
