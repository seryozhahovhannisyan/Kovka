package com.kovka.common.data;

import com.kovka.common.data.lcp.Status;

/**
 * Created by Serozh on 4/12/2017.
 */
public class SketchProduct {

    private Long id;
    private Long sketchId;

    private String price;
    private FileData image;
    private Long imageId;

    private Integer order;
    private Status status;

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

    public Long getSketchId() {
        return sketchId;
    }

    public void setSketchId(Long sketchId) {
        this.sketchId = sketchId;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public FileData getImage() {
        return image;
    }

    public void setImage(FileData image) {
        this.image = image;
    }

    public Long getImageId() {
        return imageId;
    }

    public void setImageId(Long imageId) {
        this.imageId = imageId;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }
}