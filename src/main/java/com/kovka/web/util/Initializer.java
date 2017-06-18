package com.kovka.web.util;

import com.kovka.business.IAboutManager;
import com.kovka.business.IUserManager;
import com.kovka.common.data.About;
import com.kovka.common.data.AboutInfo;
import com.kovka.common.data.User;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.ImageSizeLoader;
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
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;


public class Initializer implements ServletContextListener {

    /**
     *
     */

    public static String DATA_FOLDER = "data";
    public static String G_MAP_KEY = "AIzaSyAFrmcXq4r7kvf21AENjl-qxUa9hJV_8gU";
    public static ServletContext context;
    /**
     * application context object (container)
     */
    private static ApplicationContext applicationContext;
    private static Logger logger = Logger.getLogger(Initializer.class);
    private static SetupInfo setupInfo;
    private static ImageSizeLoader imageSizeLoader;
    private static String dataPath;

    public Initializer() {
    }

    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    public static SetupInfo getSetupInfo() {
        return setupInfo;
    }

    public static ImageSizeLoader getImageSizeLoader() {
        return imageSizeLoader;
    }

    public static String getUploadDir() {
        return dataPath;
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

    public static String getSketchUploadDir() {
        return File.separator + DATA_FOLDER + File.separator + FileDataUtil.LOGO_PREFIX_SKETCH;
    }

    public static String getProductUploadDir() {
        return File.separator + DATA_FOLDER + File.separator + FileDataUtil.LOGO_PREFIX_PRODUCT;
    }

    public static String getMachineUploadDir() {
        return File.separator + DATA_FOLDER + File.separator + FileDataUtil.LOGO_PREFIX_MACHINE;
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
            imageSizeLoader = (ImageSizeLoader) applicationContext.getBean("imageSizeLoader");

            logger.info("contextPath " +  contextPath);

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
            initFolders(dataPath + File.separator + DATA_FOLDER);
            initFolders(dataPath + File.separator + DATA_FOLDER + File.separator + FileDataUtil.LOGO_PREFIX_SKETCH);
            initFolders(dataPath + File.separator + DATA_FOLDER + File.separator + FileDataUtil.LOGO_PREFIX_PRODUCT);
            initFolders(dataPath + File.separator + DATA_FOLDER + File.separator + FileDataUtil.LOGO_PREFIX_MACHINE);


            //set tmp dir
            File tempDir = (File) context.getAttribute("javax.servlet.context.tempdir");
            ImageIO.setCacheDirectory(tempDir);
            init();
            logger.info("-- application started -- ");
        } catch (Exception e) {
            logger.error(e);
            throw new RuntimeException("unable initialize application");
        }
    }

    private void init() throws InternalErrorException, EncryptException, DataParseException {
        initUser();
        initAbout();
    }

    private void initUser() throws InternalErrorException, EncryptException {
        IUserManager userManager = BeanProvider.getUserManager();
        List<User> users = userManager.getAll();
        if (Utils.isEmpty(users)) {
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

    private void initAbout() throws InternalErrorException, EncryptException, DataParseException {
        IAboutManager aboutManager = BeanProvider.getAboutManager();
        List<About> abouts = aboutManager.getAll(Language.getDefault());
        if (Utils.isEmpty(abouts)) {
            About about = new About();
            about.addEmail("seryozha.hovhannisyan@gmail.com");
            about.addPhone("37493787377");
            about.addPhone("37441658595");
            about.setCoords("40.177200,44.503490");

            about.convertEmails();
            about.convertPhones();

            List<AboutInfo> infos = new ArrayList<AboutInfo>();
            for (Language language : Language.values()) {
                AboutInfo aboutInfo = new AboutInfo();
                aboutInfo.setLanguage(language);

                aboutInfo.setTitle("Общество с ограниченной ответственностью «Техпромстрой»");
                aboutInfo.setAddress("109390 г.Москва, ул. 1-я Текстильщиков д. 12/9 офис 2");
                aboutInfo.setDescription("«Желдор Ковка» была организована в 2007 году и располагает собственными мощностями, строительными материалами и оборудованием в Железнодорожном Московской области, а так же высококвалифицированными как ИТР, так и рабочими для производства работ. Основная специализация нашего производства —  ковка различных художественных изделий, комплексный капитальный ремонт и реконструкция многоквартирных жилых домов, детских дошкольных учреждений, общеобразовательных школ, больниц и поликлиник.");

                infos.add(aboutInfo);
            }
            about.setInfos(infos);
            aboutManager.add(about);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
//        deRegistering();
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
}
