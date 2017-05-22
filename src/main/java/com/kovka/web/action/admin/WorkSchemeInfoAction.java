package com.kovka.web.action.admin;

import com.kovka.business.IWorkSchemeInfoManager;
import com.kovka.common.data.WorkSchemeInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.DataConverter;
import com.kovka.common.util.Utils;
import com.kovka.web.action.BaseAction;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Serozh on 6/26/2016.
 */
public class WorkSchemeInfoAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(WorkSchemeInfoAction.class.getSimpleName());
    public List<WorkSchemeInfo> workSchemeInfos;
    private IWorkSchemeInfoManager workSchemeInfoManager;
    //add
    private String name;
    private String description;
    //update
    private String id;

    public String add() {

        if (Utils.isEmpty(name)) {
            logger.info("name is  required");
            session.put(MESSAGE, "name is requeired");
            return ERROR;

        }

        List<WorkSchemeInfo> infos = new ArrayList<WorkSchemeInfo>();
        for (Language language : Language.values()) {
            WorkSchemeInfo info = new WorkSchemeInfo();
            info.setLanguage(language);
            info.setName(name.trim());
            info.setDescription(description.trim());

            infos.add(info);
        }
        try {
            workSchemeInfoManager.add(infos);
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }
        return SUCCESS;
    }

    public String list() {
        try {
            workSchemeInfos = workSchemeInfoManager.getAll();
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }
        return SUCCESS;
    }

    public String update() {

        WorkSchemeInfo info = new WorkSchemeInfo();

        info.setName(name.trim());
        info.setDescription(description.trim());

        try {
            info.setId(DataConverter.convertToLong(id));
            workSchemeInfoManager.update(info);
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

    public String delete() {

        try {
            workSchemeInfoManager.delete(DataConverter.convertToLong(id));
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


    public void setWorkSchemeInfoManager(IWorkSchemeInfoManager workSchemeInfoManager) {
        this.workSchemeInfoManager = workSchemeInfoManager;
    }
}