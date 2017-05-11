package com.kovka.web.action.sketch;

import com.kovka.business.IAboutManager;
import com.kovka.common.data.About;
import com.kovka.common.data.AboutInfo;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.web.action.BaseAction;
import org.apache.log4j.Logger;

import java.util.List;

/**
 * Created by Serozh on 6/26/2016.
 */
public class AboutAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(AboutAction.class.getSimpleName());
    private IAboutManager aboutManager;

    private About about;
    private List<AboutInfo> infosForEdit;
    private String latitude;
    private String longitude;
    // for edit
    private String coords;
    private String emailValues;
    private String phoneValues;


    public String edit() {

        About about = new About();
        about.setId(1L);
        about.setCoords(coords);
        about.setInfos(infosForEdit);

        try {

            about.parseEmails();
            about.parsePhones();

            about.setEmailValues(emailValues);
            about.setPhoneValues(phoneValues);

            aboutManager.update(about);
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (EntityNotFoundException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (DataParseException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }

        return SUCCESS;
    }

    public String view() {
        try {
            about = aboutManager.getById(1L);
            about.parseEmails();
            about.parsePhones();
            String coords = about.getCoords();
            latitude = coords.split(",")[0];
            longitude = coords.split(",")[1];
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (EntityNotFoundException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (DataParseException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }
        return SUCCESS;
    }


     /*##################################################################################################################
     *                                  GETTERS & SETTERS
     *##################################################################################################################
     */

    public About getAbout() {
        return about;
    }

    public String getLatitude() {
        return latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public String getCoords() {
        return coords;
    }

    public void setCoords(String coords) {
        this.coords = coords;
    }

    public String getEmailValues() {
        return emailValues;
    }

    public void setEmailValues(String emailValues) {
        this.emailValues = emailValues;
    }

    public String getPhoneValues() {
        return phoneValues;
    }

    public void setPhoneValues(String phoneValues) {
        this.phoneValues = phoneValues;
    }

    public List<AboutInfo> getInfosForEdit() {
        return infosForEdit;
    }

    public void setInfosForEdit(List<AboutInfo> infosForEdit) {
        this.infosForEdit = infosForEdit;
    }

    public void setAboutManager(IAboutManager aboutManager) {
        this.aboutManager = aboutManager;
    }
}