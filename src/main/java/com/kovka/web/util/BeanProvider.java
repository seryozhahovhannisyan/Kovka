package com.kovka.web.util;

import com.kovka.business.IAboutManager;
import com.kovka.business.IUserManager;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author : Serozh
 *         Date: 24.08.13
 *         Time: 1:55
 */
public class BeanProvider {

    //    private static ApplicationContext context = Initializer.getApplicationContext();
    private static ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");


    public static IUserManager getUserManager() throws BeansException {
        return (IUserManager) context.getBean("UserManager");
    }

    public static IAboutManager getAboutManager() throws BeansException {
        return (IAboutManager) context.getBean("AboutManager");
    }


}
