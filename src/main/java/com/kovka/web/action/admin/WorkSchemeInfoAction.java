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
    //all count
    private long dataCount;
    //add/edit
    private String name;
    private String description;
    //update
    private String id;
    //delete
    private String key;

    public String add() {

        Long key = System.currentTimeMillis();
        if (Utils.isEmpty(name)) {
            logger.info("name is  required");
            session.put(MESSAGE, "name is requeired");
            return ERROR;

        }

        List<WorkSchemeInfo> infos = new ArrayList<WorkSchemeInfo>();
        for (Language language : Language.values()) {
            WorkSchemeInfo info = new WorkSchemeInfo();
            info.setLanguage(language);
            info.setKey(key);
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
            if(!Utils.isEmpty(workSchemeInfos)){
                dataCount = workSchemeInfos.size();
            }
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
            workSchemeInfoManager.delete(DataConverter.convertToLong(key));
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

    public List<WorkSchemeInfo> getWorkSchemeInfos() {
        return workSchemeInfos;
    }

    public long getDataCount() {
         return dataCount;
     }

    public void setId(String id) {
        this.id = id;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setWorkSchemeInfoManager(IWorkSchemeInfoManager workSchemeInfoManager) {
        this.workSchemeInfoManager = workSchemeInfoManager;
    }
}