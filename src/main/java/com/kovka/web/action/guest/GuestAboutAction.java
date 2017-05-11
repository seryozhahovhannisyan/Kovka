package com.kovka.web.action.guest;

import com.kovka.business.IAboutManager;
import com.kovka.common.data.About;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.web.action.BaseAction;
import org.apache.log4j.Logger;

/**
 * Created by Serozh on 6/26/2016.
 */
public class GuestAboutAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(GuestAboutAction.class.getSimpleName());

    private IAboutManager aboutManager;

    private About about;

    public String view() {
        try {
            about = aboutManager.getByLang(getToLang());
            about.parseEmails();
            about.parsePhones();
        } catch (InternalErrorException e) {
            logger.error(e);
        } catch (EntityNotFoundException e) {
            logger.error(e);
        } catch (DataParseException e) {
            e.printStackTrace();
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

    public void setAboutManager(IAboutManager aboutManager) {
        this.aboutManager = aboutManager;
    }
}