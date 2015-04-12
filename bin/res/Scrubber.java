import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;

public class Scrubber {
    public static void main(String ... args) throws FileNotFoundException {
        if (args.length == 0) {
            throw new RuntimeException("Gotta give a file.");
        }
        Scanner scan = new Scanner(new File(args[0]));
        while (scan.hasNext()) {
            String line = scan.nextLine();
            if (!line.contains("@author")) {
                System.out.println(line);
            }
        }
    }
}
