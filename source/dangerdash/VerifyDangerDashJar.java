import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.jar.JarFile;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.util.CheckClassAdapter;

public final class VerifyDangerDashJar {
    public static void main(String[] args) throws Exception {
        if (args.length != 1) throw new IllegalArgumentException("usage: jar");
        Path jarPath = Path.of(args[0]);
        try (JarFile jar = new JarFile(jarPath.toFile())) {
            for (String name : new String[]{"g.class", "l.class"}) {
                byte[] bytes = jar.getInputStream(jar.getJarEntry(name)).readAllBytes();
                System.out.println("=== " + name + " bytes=" + bytes.length + " ===");
                CheckClassAdapter.verify(new ClassReader(bytes), false, new PrintWriter(System.out, true));
            }
        }
    }
}
