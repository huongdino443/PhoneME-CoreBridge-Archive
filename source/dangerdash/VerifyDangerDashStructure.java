import java.nio.file.Path;
import java.util.jar.JarFile;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.util.CheckClassAdapter;

public final class VerifyDangerDashStructure {
    public static void main(String[] args) throws Exception {
        if (args.length != 1) throw new IllegalArgumentException("usage: jar");
        try (JarFile jar = new JarFile(Path.of(args[0]).toFile())) {
            for (String name : new String[]{"g.class", "l.class"}) {
                byte[] bytes = jar.getInputStream(jar.getJarEntry(name)).readAllBytes();
                ClassReader reader = new ClassReader(bytes);
                reader.accept(new CheckClassAdapter(null, false), 0);
                System.out.println(name + ": structural-check PASS, bytes=" + bytes.length);
            }
        }
    }
}
