package com.kovka.web.action.admin;

import com.kovka.business.ISketchProductManager;
import com.kovka.common.data.FileData;
import com.kovka.common.data.SketchProduct;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.exception.DataParseException;
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
public class SketchProductUploadAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(SketchProductUploadAction.class.getSimpleName());
    private static final String RESP_SUCCESS = "success";//"{\"jsonrpc\" : \"2.0\", \"result\" : \"success\", \"id\" : \"id\"}";
    private static final String RESP_ERROR = "error";//"{\"jsonrpc\" : \"2.0\", \"error\" : {\"code\": 101, \"message\": \"Failed to open input stream.\"}, \"id\" : \"id\"}";
    private ISketchProductManager productManager;
    private InputStream result = new ByteArrayInputStream(INPUT.getBytes());
    private List<SketchProduct> products;

    private File file;
    private String fileFileName;
    private String fileContentType;

    private String sketchId;

    public String view() {
        try {
            products = productManager.getBySketchId(DataConverter.convertToLong(sketchId));
        } catch (InternalErrorException e) {
            logger.error(e);
            return INPUT;
        } catch (DataParseException e) {
            logger.error(e);
            return INPUT;
        }
        return SUCCESS;
    }

    public String upload() {

        if (file == null || Utils.isEmpty(fileFileName) || Utils.isEmpty(sketchId)) {
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

            SketchProduct sketchProduct = new SketchProduct();
            sketchProduct.setSketchId(DataConverter.convertToLong(sketchId));
            sketchProduct.setImage(d);
            sketchProduct.setStatus(Status.ACTIVE);
            productManager.add(sketchProduct);
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

    public List<SketchProduct> getProducts() {
        return products;
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

    public String getSketchId() {
        return sketchId;
    }

    public void setSketchId(String sketchId) {
        this.sketchId = sketchId;
    }

    public void setProductManager(ISketchProductManager productManager) {
        this.productManager = productManager;
    }
}
