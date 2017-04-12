package com.kovka.web.action.general;

import com.kovka.business.IUserManager;
import com.kovka.common.data.User;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.util.Utils;
import com.kovka.web.action.BaseAction;
import com.kovka.web.util.encryption.SHAHashEnrypt;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.validation.SkipValidation;

import javax.servlet.http.Cookie;

/**
 * Created by Serozh on 7/4/2016.
 */
public class Login extends BaseAction {


    private IUserManager userManager;

    private static Logger logger = Logger.getLogger(Login.class);

    private String username;

    private String password;

    @SkipValidation
    public String view() {
        return SUCCESS;
    }

    public String authenticate() {
        try {
            password = SHAHashEnrypt.get_MD5_SecurePassword(password);
            User user = userManager.login(username, password);
            if (user != null) {
                // stores last activity time via cookie
                Cookie cookie = new Cookie(COOKIE_MODERATOR_LAST_ACTIVITY, String.valueOf(System.currentTimeMillis()));
                cookie.setMaxAge(DEFAULT_TIMEOUT_MODERATOR);
                ServletActionContext.getResponse().addCookie(cookie);

                logger.info(String.format("User Logged In :[ %s, %s ]", user.getName(), user.getEmail()));

                session.put(SESSION_USER, user);
            } else {
                String message = String.format("User %s account is disabled", username);
                addActionError(message);
                logger.warn(message);
                return INPUT;
            }



        } catch (Exception e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (Utils.isEmpty(username)) {
            addFieldError("username", "username can not be empty");
        }

        if (Utils.isEmpty(password)) {
            addFieldError("password", "password can not be empty");
        }
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUserManager(IUserManager userManager) {
        this.userManager = userManager;
    }
}