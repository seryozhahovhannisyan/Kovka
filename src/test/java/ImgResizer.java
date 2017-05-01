import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

/**
 * Created by User on 01.05.2017.
 */
public class ImgResizer {


    static String path = "F:\\workaspace\\github\\Kovka\\src\\test\\java";

    static File originalFile = new File(path + "/a10.JPG");

    public static void main(String[] args) {
        try {

            String photoFileName = originalFile.getName();


            BufferedImage originalImage = ImageIO.read(originalFile);

            create(photoFileName, originalImage, 128, 128);
            create(photoFileName, originalImage, 256, 256);
            create(photoFileName, originalImage, 512, 512);
            create(photoFileName, originalImage, 800, 600);
            create(photoFileName, originalImage, 1024, 1024);
            create(photoFileName, originalImage, 1536, 1536);
            create(photoFileName, originalImage, 2048, 2048);


        } catch (Exception e) {
            //todo
            e.printStackTrace();
        }
    }

    static void create(String photoFileName, BufferedImage originalImage, int w, int h) throws IOException {

        String extension = photoFileName.substring(photoFileName.indexOf("."));

        BufferedImage thumb = ImageScaler.resize(originalImage, w, h);
        String filename = System.currentTimeMillis() + "_" + w + "x" + h + "" + extension;
        File thumbFile = new File(path + "/" + filename);

        boolean done = ImageIO.write(thumb, "JPG", thumbFile);
        System.out.println(done);

    }
}
