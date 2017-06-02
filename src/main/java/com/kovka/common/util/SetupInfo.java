package com.kovka.common.util;

import java.io.Serializable;
import java.util.Properties;

/**
 * Created by Serozh on 6/21/2016.
 */
public class SetupInfo implements Serializable {

    //pages
    public String setup = "dev";
    public String version = "1.0";
    //    public String staticDir = ".";
    public String staticDir = "";
    //    public String staticDirProd = "/var/lib/tomcat7/webapps";//".";
    public String staticDirProd = "/home/mngkovka/appservers/apache-tomcat-7x/webapps";//".";
    private Properties props;


    public SetupInfo() {
    }

    public SetupInfo(Properties properties) {
        try {
            this.props = properties;
            setup = properties.getProperty("setup");
            version = properties.getProperty("version");
            staticDir = properties.getProperty("static.dir");
            staticDirProd = properties.getProperty("static.dir.prod");


        } catch (Exception e) {

        }

    }

    private String fName(int width, int height) {
        return width + "x" + height;
    }

    public final Properties getProperties() {
        return props;
    }

    public String getProperty(String key) {
        return props.getProperty(key);
    }

    public String getSetup() {
        return setup;
    }

    public String getVersion() {
        return version;
    }

    public String getStaticDir() {
        return staticDir;
    }

    public String getStaticDirProd() {
        return staticDirProd;
    }

}
