package com.kovka.common.data;

import com.kovka.common.data.lcp.Status;

import java.util.List;

/**
 * Created by Serozh on 4/12/2017.
 */
public class Sketch {

    private Long id;

    private SketchInfo currentInfo;
    private List<SketchInfo> infos;

    private List<FileData> images;
    private List<SketchProduct> products;

    private Status status;
    private Long imageId;
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

    public Long getImageId() {
        return imageId;
    }

    public void setImageId(Long imageId) {
        this.imageId = imageId;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }
}
