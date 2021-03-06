package com.kovka.web.action.admin;

import com.kovka.business.IFileDataManager;
import com.kovka.common.data.FileData;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.exception.InternalErrorException;
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
public class MachineUploadAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(MachineUploadAction.class.getSimpleName());
    private static final String RESP_SUCCESS = "success";//"{\"jsonrpc\" : \"2.0\", \"result\" : \"success\", \"id\" : \"id\"}";
    private static final String RESP_ERROR = "error";//"{\"jsonrpc\" : \"2.0\", \"error\" : {\"code\": 101, \"message\": \"Failed to open input stream.\"}, \"id\" : \"id\"}";
    private IFileDataManager dataManager;
    private InputStream result = new ByteArrayInputStream(INPUT.getBytes());
    private List<FileData> datas;

    private File file;
    private String fileFileName;
    private String fileContentType;

    private String id;

    public String view() {
        try {
            datas = dataManager.getMachineData();
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return ERROR;
        }
        return SUCCESS;
    }

    public String upload() {

        if (file == null || Utils.isEmpty(fileFileName)) {
            logger.error("SketchUploadAction, data or dataFileName is null");
            result = new ByteArrayInputStream(RESP_ERROR.getBytes());
            session.put(MESSAGE, getText("error.internal"));
            return INPUT;
        }

        try {

            byte[] fileData = FileUtils.readFileToByteArray(file);
            if (fileData == null) {
                logger.error("SketchUploadAction, data or dataFileName is null");
                result = new ByteArrayInputStream(RESP_ERROR.getBytes());
                session.put(MESSAGE, getText("error.internal"));
                return INPUT;
            }

            FileData d = new FileData();
            d.setData(fileData);
            d.setFileName(fileFileName);
            d.setContentType(fileContentType);
            d.setSize(fileData.length);
            d.setCreationDate(new Date(System.currentTimeMillis()));
            d.setStatus(Status.ACTIVE);
            d.setIsMachine(true);
            dataManager.add(d);
        } catch (IOException e) {
            result = new ByteArrayInputStream(RESP_ERROR.getBytes());
            logger.error(e);
            return INPUT;
        } catch (Exception e) {
            result = new ByteArrayInputStream(RESP_ERROR.getBytes());
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return INPUT;
        }
        result = new ByteArrayInputStream(RESP_SUCCESS.getBytes());
        return SUCCESS;
    }

    public InputStream getResult() {
        return result;
    }

    public List<FileData> getDatas() {
        return datas;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public void setFileFileName(String fileFileName) {
        this.fileFileName = fileFileName;
    }

    public void setFileContentType(String fileContentType) {
        this.fileContentType = fileContentType;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setDataManager(IFileDataManager dataManager) {
        this.dataManager = dataManager;
    }
}
