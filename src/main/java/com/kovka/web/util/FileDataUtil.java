package com.kovka.web.util;

import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.ImageSizeLoader;
import org.apache.commons.io.FileUtils;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Serozh on 3/16/2017.
 */
public class FileDataUtil {

    public static String LOGO_FORMAT = "%s_%d%s";
    public static String LOGO_PREFIX_SKETCH = "sketch";
    public static String LOGO_PREFIX_MACHINE = "machine";
    public static String LOGO_PREFIX_PRODUCT = "product";


    public static void createFileSketch(String fileName, byte[] data) throws IOException, InternalErrorException {
        ImageSizeLoader imageSizeLoader = Initializer.getImageSizeLoader();

        File sketchFile = new File(Initializer.getUploadDir() + Initializer.getSketchUploadDir() + Constants.FILE_SEPARATOR +
                imageSizeLoader.sketch + fileName);
        InputStream in = new ByteArrayInputStream(data);
        BufferedImage originalImage = ImageIO.read(in);

        BufferedImage large = ImageScaler.resize(originalImage, imageSizeLoader.sketchWidth, imageSizeLoader.sketchHeight);

        boolean done = ImageIO.write(large, fileName.substring(fileName.indexOf(".")+1), sketchFile);
        if (!done) {
            throw new InternalErrorException("Could not create large image");
        }
    }

    public static void createLargeFileSketch(String fileName, byte[] data) throws IOException, InternalErrorException {
        ImageSizeLoader imageSizeLoader = Initializer.getImageSizeLoader();

        File sketchFile = new File(Initializer.getUploadDir() + Initializer.getSketchUploadDir() + Constants.FILE_SEPARATOR + fileName);
        InputStream in = new ByteArrayInputStream(data);
        BufferedImage originalImage = ImageIO.read(in);

        BufferedImage large = ImageScaler.resize(originalImage, imageSizeLoader.largeWidth, imageSizeLoader.largeHeight);

        boolean done = ImageIO.write(large, fileName.substring(fileName.indexOf(".")+1), sketchFile);
        if (!done) {
            throw new InternalErrorException("Could not create large image");
        }
    }

    public static void createFileMachine(String fileName,  byte[] data) throws IOException, InternalErrorException {

        ImageSizeLoader imageSizeLoader = Initializer.getImageSizeLoader();

        File originalFile = new File(Initializer.getUploadDir() + Initializer.getMachineUploadDir() + Constants.FILE_SEPARATOR + fileName);
        InputStream in = new ByteArrayInputStream(data);
        BufferedImage originalImage = ImageIO.read(in);

        BufferedImage large = ImageScaler.resize(originalImage, imageSizeLoader.largeWidth, imageSizeLoader.largeHeight);

        boolean done = ImageIO.write(large, fileName.substring(fileName.indexOf(".")+1), originalFile);
        if (!done) {
            throw new InternalErrorException("Could not create large image");
        }
//
    }

    public static void createFileProductResize(String fileName, byte[] data) throws IOException,InternalErrorException {
        ImageSizeLoader imageSizeLoader = Initializer.getImageSizeLoader();

        File originalFile = new File(Initializer.getUploadDir() + Initializer.getProductUploadDir() + Constants.FILE_SEPARATOR + fileName);
        InputStream in = new ByteArrayInputStream(data);
        BufferedImage originalImage = ImageIO.read(in);

        BufferedImage large = ImageScaler.resize(originalImage, imageSizeLoader.productWidth, imageSizeLoader.productHeight);

        boolean done = ImageIO.write(large, fileName.substring(fileName.indexOf(".")+1), originalFile);
        if (!done) {
            throw new InternalErrorException("Could not create large image");
        }
    }

    public static void createFileProduct(String fileName, byte[] data) throws IOException {
        File originalFile = new File(Initializer.getUploadDir() + Initializer.getProductUploadDir() + Constants.FILE_SEPARATOR + fileName);
        FileUtils.writeByteArrayToFile(originalFile, data);
    }


}
