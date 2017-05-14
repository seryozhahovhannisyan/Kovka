package com.kovka.common.data;

import com.kovka.common.data.lcp.Status;

import java.util.List;

/**
 * Created by Serozh on 4/12/2017.
 */
public class Sketch {

    private Long id;

    private FileData mainImage;
    private SketchInfo currentInfo;
    private List<SketchInfo> infos;

    private List<FileData> images;
    private List<SketchProduct> products;

    private Status status;
    private Integer order;
    private Long mainImageId;

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

    public SketchInfo getCurrentInfo() {
        return currentInfo;
    }

    public void setCurrentInfo(SketchInfo currentInfo) {
        this.currentInfo = currentInfo;
    }

    public List<SketchInfo> getInfos() {
        return infos;
    }

    public void setInfos(List<SketchInfo> infos) {
        this.infos = infos;
    }

    public List<FileData> getImages() {
        return images;
    }

    public void setImages(List<FileData> images) {
        this.images = images;
    }

    public List<SketchProduct> getProducts() {
        return products;
    }

    public void setProducts(List<SketchProduct> products) {
        this.products = products;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public FileData getMainImage() {
        return mainImage;
    }

    public void setMainImage(FileData mainImage) {
        this.mainImage = mainImage;
    }

    public Long getMainImageId() {
        return mainImageId;
    }

    public void setMainImageId(Long mainImageId) {
        this.mainImageId = mainImageId;
    }
}
