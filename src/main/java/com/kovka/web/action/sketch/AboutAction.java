package com.kovka.web.action.sketch;

import com.kovka.business.IAboutManager;
import com.kovka.business.ISketchManager;
import com.kovka.common.data.About;
import com.kovka.common.data.AboutInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.Utils;
import com.kovka.web.action.BaseAction;
import com.kovka.web.action.dto.ResponseDto;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Serozh on 6/26/2016.
 */
public class AboutAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(AboutAction.class.getSimpleName());
    private IAboutManager aboutManager;

    private About about;
     private List<AboutInfo> infosForEdit ;
    private String latitude;
    private String longitude;
    // for add
    private String coords;
    private String emailValues;
    private String phoneValues;
    //info
    private String title;
    private String address;
    private String shortDesc;
    private String description;

    public String edit() {

        if (Utils.isEmpty(address) ||
                Utils.isEmpty(shortDesc) ||
                Utils.isEmpty(title) ||
                Utils.isEmpty(description)) {
            logger.info("Empty incoming data");
            return INPUT;
        }

        About about = new About();

        List<AboutInfo> infos = new ArrayList<AboutInfo>();
        for (Language language : Language.values()) {
            AboutInfo info = new AboutInfo();
            info.setLanguage(language);
            info.setAddress(address.trim());
            info.setShortDesc(shortDesc.trim());
            info.setTitle(title.trim());
            info.setDescription(description.trim());
            infos.add(info);
        }
        about.setInfos(infos);

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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