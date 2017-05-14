package com.kovka.web.action.sketch;

import com.kovka.business.IFileDataManager;
import com.kovka.common.data.FileData;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.DataConverter;
import com.kovka.common.util.Utils;
import com.kovka.web.action.BaseAction;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

//

/**
 * Created by htdev001 on 3/5/14.
 */
public class FileDataAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(FileDataAction.class.getSimpleName());
     private IFileDataManager dataManager;

    private String id;

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

    public void setId(String id) {
        this.id = id;
    }

    public void setDataManager(IFileDataManager dataManager) {
        this.dataManager = dataManager;
    }
}
