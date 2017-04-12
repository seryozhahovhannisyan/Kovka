package com.kovka.web.util;

import com.kovka.business.IUserManager;
import com.kovka.common.data.User;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.SetupInfo;
import com.kovka.common.util.Utils;
import com.kovka.web.util.encryption.EncryptException;
import com.kovka.web.util.encryption.SHAHashEnrypt;
import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.File;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.List;


public class Initializer implements ServletContextListener {

    /**
     * application context object (container)
     */
    private static ApplicationContext applicationContext;

    private static Logger logger = Logger.getLogger(Initializer.class);

    private static SetupInfo setupInfo;

    /**
     *
     */

    public static String DATA_FOLDER = "data";


    public static ServletContext context;
    private static String dataPath;

    public Initializer() {
    }

    @Override
    public void contextInitialized(ServletContextEvent event) {

        final String PROD = "prod";
        final String DEV = "dev";
        logger.info("-- start application -- ");

        try {

            System.setProperty("file.encoding", "UTF-8");

            context = event.getServletContext();
            String contextPath = context.getRealPath("/");

            applicationContext = (ApplicationContext) context.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
            setupInfo = (SetupInfo) applicationContext.getBean("setupInfo");

            if (setupInfo.getSetup().equals(DEV)) {

                logger.info("**************************************************************************************************");
                logger.info("contextPath=>" + contextPath);
                logger.info("**************************************************************************************************");

                //images real path
                if (Utils.isEmpty(setupInfo.getStaticDir())) {
                    dataPath = contextPath;
                } else {
                    dataPath = setupInfo.getStaticDir();
                }

            } else if (setupInfo.getSetup().equals(PROD)) {
                dataPath = setupInfo.getStaticDirProd();
            } else {
                throw new RuntimeException("application init fail " + setupInfo.getSetup());
            }

            logger.info(String.format("Application %s intitilize params [imagePath:%s]", setupInfo.getVersion(), dataPath));

            initFolders(dataPath);
            initFolders(dataPath + File.separator +DATA_FOLDER);


            //set tmp dir
            File tempDir = (File) context.getAttribute("javax.servlet.context.tempdir");
            ImageIO.setCacheDirectory(tempDir);
            init();
            logger.info("-- application started -- ");
        } catch (Exception e) {
            logger.error(e);
            throw new RuntimeException("unable intitilize application");
        }
    }

    private void init() throws InternalErrorException, EncryptException {
        IUserManager userManager = BeanProvider.getUserManager();
        List<User> users =  userManager.getAll();
        if(Utils.isEmpty(users)){
            User user = new User();
            user.setUsername("admin");
            user.setPassword(SHAHashEnrypt.get_MD5_SecurePassword("1"));
            user.setName("Seryozha");
            user.setSurname("Hovhannisyan");
            user.setEmail("seryozha.hovhannisyan@gmail.com");
            user.setPhone("93787377");
            user.setPhoneCode("374");
            userManager.add(user);
        }
    }


    @Override
    public void contextDestroyed(ServletContextEvent event) {
        deRegistering();
    }

    private void deRegistering() {
        Enumeration<Driver> drivers = DriverManager.getDrivers();
        while (drivers.hasMoreElements()) {
            Driver driver = drivers.nextElement();
            try {
                DriverManager.deregisterDriver(driver);
                logger.info(String.format("DeRegistering jdbc driver: %s", driver));
            } catch (SQLException e) {
                logger.error(String.format("Error deRegistering driver %s", driver), e);
            }
        }
    }

    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    public static SetupInfo getSetupInfo() {
        return setupInfo;
    }

    public static String getUploadDir() {
        return dataPath;
    }

    private void initFolders(String contextRealPath) {
        File imageFolder = new File(contextRealPath);
        if (!imageFolder.exists()) {
            boolean created = imageFolder.mkdirs();
            if (created)
                logger.info(String.format("%s folder created successfully", contextRealPath));
            else
                throw new RuntimeException(String.format("Unable to create posts folder[%s]", contextRealPath));
        } else
            logger.info(String.format("%s folder already exist", contextRealPath));
    }

    public static boolean initFolders(String contextRealPath, String... folders) {

        try {
            for (String folder : folders) {
                String path = contextRealPath + File.separator + folder;
                File imageFolder = new File(path);
                if (!imageFolder.exists()) {
                    boolean created = imageFolder.mkdirs();
                    if (created)
                        logger.info(String.format("%s folder created successfully", path));
                    else {
                        logger.info(String.format("Unable to create folder[%s]", path));
                        return false;
                        //throw new InternalErrorException(String.format("Unable to create folder[%s]", path));
                    }
                } else
                    logger.info(String.format("%s folder already exist", path));
            }
        } catch (Exception e) {
            logger.error(e);
            return false;
        }

        return true;
    }

}
