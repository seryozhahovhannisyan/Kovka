package com.kovka.common.util;

import java.io.Serializable;
import java.util.Properties;

/**
 * Created by User on 10.04.2017.
 */
public class ImageSizeLoader implements Serializable {


    //thumb
    public int productWidth = 640;
    public int productHeight = 419;
    //main
    public int sketchWidth = 150;
    public int sketchHeight = 150;
    //large
    public int largeWidth = 1024;
    public int largeHeight = 768;

    public String product;
    public String sketch;
    public String large;

    private Properties props;

    public ImageSizeLoader() {
        createFolderNames();
    }

    public ImageSizeLoader(Properties properties) {
        try {
            this.props = properties;

            productWidth = Integer.parseInt(properties.getProperty("product.width"));
            productHeight = Integer.parseInt(properties.getProperty("product.height"));

            sketchWidth = Integer.parseInt(properties.getProperty("sketch.width"));
            sketchHeight = Integer.parseInt(properties.getProperty("sketch.height"));

            largeWidth = Integer.parseInt(properties.getProperty("large.width"));
            largeHeight = Integer.parseInt(properties.getProperty("large.height"));

        } catch (Exception e) {

        } finally {
            createFolderNames();
        }
    }

    private String fName(int width, int height) {
        return width + "x" + height + "_";
    }

    private void createFolderNames() {
        product = fName(productWidth, productWidth);
        sketch = fName(sketchWidth, sketchHeight);
        large = fName(largeWidth, largeHeight);
    }

    public final Properties getProperties() {
        return props;
    }

    public String getProperty(String key) {
        return props.getProperty(key);
    }


}
