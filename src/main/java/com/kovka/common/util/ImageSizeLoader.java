package com.kovka.common.util;

import java.util.Properties;

/**
 * Created by User on 10.04.2017.
 */
public class ImageSizeLoader {

    private Properties props;

    //pages
    public String setup = "dev";
    public String version = "1.0";
    public String staticDir = ".";
    //    public String staticDirProd = "/var/lib/tomcat7/webapps";//".";
    public String staticDirProd = "/opt/tomcat/webapps";//".";



    public ImageSizeLoader() {
    }

    public ImageSizeLoader(Properties properties) {
        try {
            this.props = properties;
            setup = properties.getProperty("setup");
            version = properties.getProperty("version");
            staticDir = properties.getProperty("static.dir");
            staticDirProd = properties.getProperty("static.dir.prod");


        } catch (Exception e) {

        }

    }

}
