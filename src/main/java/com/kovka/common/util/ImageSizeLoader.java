package com.kovka.common.util;

import java.io.Serializable;
import java.util.Properties;

/**
 * Created by User on 10.04.2017.
 */
public class ImageSizeLoader implements Serializable {


    //thumb
    public int thumbWidth = 48;
    public int thumbHeight = 48;
    //main
    public int mainWidth = 400;
    public int mainHeight = 300;
    //large
    public int largeWidth = 1024;
    public int largeHeight = 768;
    //slide
    public int slideWidth = 800;
    public int slideHeight = 600;
    public String thumb;
    public String main;
    public String large;
    public String slide;
    private Properties props;

    public ImageSizeLoader() {
        createFolderNames();
    }

    public ImageSizeLoader(Properties properties) {
        try {
            this.props = properties;

            thumbWidth = Integer.parseInt(properties.getProperty("thumb.width"));
            thumbHeight = Integer.parseInt(properties.getProperty("thumb.height"));

            mainWidth = Integer.parseInt(properties.getProperty("main.width"));
            mainHeight = Integer.parseInt(properties.getProperty("main.height"));

            largeWidth = Integer.parseInt(properties.getProperty("large.width"));
            largeHeight = Integer.parseInt(properties.getProperty("large.height"));

            slideWidth = Integer.parseInt(properties.getProperty("slide.width"));
            slideHeight = Integer.parseInt(properties.getProperty("slide.height"));

        } catch (Exception e) {

        } finally {
            createFolderNames();
        }
    }

    private String fName(int width, int height) {
        return width + "x" + height;
    }

    private void createFolderNames() {
        thumb = fName(thumbWidth, thumbWidth);
        main = fName(mainWidth, mainHeight);
        large = fName(largeWidth, largeHeight);
        slide = fName(slideWidth, slideHeight);
    }

    public final Properties getProperties() {
        return props;
    }

    public String getProperty(String key) {
        return props.getProperty(key);
    }


}
