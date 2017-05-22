package com.kovka.web.action.admin;

import com.kovka.business.IFileDataManager;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.DataConverter;
import com.kovka.web.action.BaseAction;
import org.apache.log4j.Logger;

import java.util.List;

//

/**
 * Created by htdev001 on 3/5/14.
 */
public class FileDataAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(FileDataAction.class.getSimpleName());
     private IFileDataManager dataManager;

    private String id;
    //sort
    private String sortIdes;
    private String sketchId;

    public String delete() {
        try {
            dataManager.delete(DataConverter.convertToLong(id));
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return ERROR;
        } catch (DataParseException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return ERROR;
        } catch (EntityNotFoundException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return ERROR;
        }
        return SUCCESS;
    }

    public String sort() {
        try {

            List<Long> ides = DataConverter.convertStringIdesToLong(sortIdes);
            dataManager.sort(ides);

        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return INPUT;
        } catch (DataParseException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return INPUT;
        } catch (EntityNotFoundException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return INPUT;
        }
        return SUCCESS;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSketchId() {
        return sketchId;
    }

    public void setSketchId(String sketchId) {
        this.sketchId = sketchId;
    }

    public void setSortIdes(String sortIdes) {
        this.sortIdes = sortIdes;
    }

    public void setDataManager(IFileDataManager dataManager) {
        this.dataManager = dataManager;
    }
}
