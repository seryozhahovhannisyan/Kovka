package com.kovka.web.util;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;

/**
 * Created by Serozh on 3/16/2017.
 */
public class FileDataUtil {

    public static String LOGO_FORMAT = "%s_%d%s";
    public static String LOGO_PREFIX_SKETCH = "sketch";
    public static String LOGO_PREFIX_PRODUCT = "product";


    public static void createFileSketch(String fileName,  byte[] data) throws IOException {
        File originalFile = new File(Initializer.getUploadDir() + Initializer.getSketchUploadDir() + Constants.FILE_SEPARATOR + fileName);
        FileUtils.writeByteArrayToFile(originalFile, data);
    }

    public static void createFileProduct(String fileName, byte[] data) throws IOException {
        File originalFile = new File(Initializer.getUploadDir() + Initializer.getProductUploadDir() + Constants.FILE_SEPARATOR + fileName);
        FileUtils.writeByteArrayToFile(originalFile, data);
    }


}
