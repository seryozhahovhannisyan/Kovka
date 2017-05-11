package com.kovka.web.action;

import com.kovka.common.data.lcp.Language;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.util.Utils;
import com.kovka.web.util.Constants;
import com.kovka.web.util.Initializer;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.CookiesAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.List;
import java.util.Map;

public class BaseAction extends ActionSupport
        implements BaseActionConstants, ApplicationAware, SessionAware, CookiesAware {

    private static Logger logger = Logger.getLogger(BaseAction.class);
    protected final String NOT_PERMITTED = "not_permitted";
    /**
     * Tracker logger
     */
    protected Logger tracker = Logger.getLogger("Tracker");
    /**
     * data of application scope
     */
    protected Map<String, Object> application;
    /**
     * data of session scope
     */
    protected Map<String, Object> session;
    /**
     * data of cookie
     */
    protected Map<String, String> cookies;

    protected HttpSession getHttpSession() {
        return ServletActionContext.getRequest().getSession();
    }

    protected HttpServletRequest getHttpServletRequest() {
        return ServletActionContext.getRequest();
    }

    protected HttpServletResponse getHttpServletResponse() {
        return ServletActionContext.getResponse();
    }

    protected String getSessionId() {
        return getHttpSession().getId();
    }

    protected String getErrorUrlAction() {
        return "error.action";
    }

    public Language getToLang() {
        Language language = (Language) session.get(LANGUAGE);
        return language == null ? Language.getDefault() : language;
    }

    public boolean isEN() {
        Language language = (Language) session.get(LANGUAGE);
        return language == null ?
                Language.getDefault() == Language.ENGLISH :
                language == Language.ENGLISH;
    }

    public Language[] getLanguages() {
        return Language.values();
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }


    public void setApplication(Map<String, Object> application) {
        this.application = application;
    }


    public void setCookiesMap(Map<String, String> cookies) {
        this.cookies = cookies;
    }

    public boolean hasFieldError(String filedName) {
        Map<String, List<String>> errors = getFieldErrors();
        return errors == null || errors.size() == 0
                ? false
                : errors.containsKey(filedName);
    }

    public String toLowerCase(String str) {
        return Utils.isEmpty(str)
                ? str
                : str.toLowerCase();
    }

    public String toUpperCase(String str) {
        return Utils.isEmpty(str)
                ? str
                : str.toUpperCase();
    }

    public Status[] getStatuses() {
        return Status.values();
    }

    public boolean isLogoExist(String logo) {
        try {
            String pPath = Initializer.getUploadDir() + Initializer.getSketchUploadDir() + Constants.FILE_SEPARATOR + logo;
            pPath = pPath.replaceAll("\\\\", "/");

            File file = new File(pPath);
            return file.exists() && file.isFile();
        } catch (Exception e) {
            logger.warn(String.format("file not exist[%s]", logo));
        }
        return false;
    }

    public boolean isProductImageExist(String logo) {
        try {
            String pPath = Initializer.getUploadDir() + Initializer.getProductUploadDir() + Constants.FILE_SEPARATOR + logo;
            pPath = pPath.replaceAll("\\\\", "/");

            File file = new File(pPath);
            return file.exists() && file.isFile();
        } catch (Exception e) {
            logger.warn(String.format("file not exist[%s]", logo));
        }
        return false;
    }

    public String getLogo(String logo) {
        String pPath = Initializer.getSketchUploadDir() + Constants.FILE_SEPARATOR + logo;
        pPath = pPath.replaceAll("\\\\", "/");
        return pPath;
    }

    public String getProductImage(String logo) {
        String pPath = Initializer.getProductUploadDir() + Constants.FILE_SEPARATOR + logo;
        pPath = pPath.replaceAll("\\\\", "/");
        return pPath;
    }
}