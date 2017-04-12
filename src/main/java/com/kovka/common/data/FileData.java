package com.kovka.common.data;

import com.kovka.common.data.lcp.Status;

import java.io.File;
import java.util.Date;

/**
 * Created by htdev001 on 3/7/14.
 */
public class FileData {

    private Long id;
    private String fileName;
    private String contentType;
    private Integer size;
    private Date creationDate;
    private Status status;
    //
    private File file;
    private byte[] data;

    private Long sketchId;

    private int order;


    /*##################################################################################################################
     *                                  GETTERS & SETTERS
     *##################################################################################################################
     */

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public byte[] getData() {
        return data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    public Long getSketchId() {
        return sketchId;
    }

    public void setSketchId(Long sketchId) {
        this.sketchId = sketchId;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }
}
