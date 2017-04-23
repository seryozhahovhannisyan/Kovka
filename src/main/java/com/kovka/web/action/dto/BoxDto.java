package com.kovka.web.action.dto;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Serozh on 4/22/2017.
 */
public class BoxDto {

    private String id;

    private String name;
    private String shortDesc;

    private String title;
    private String description;

    private String image;

    private List<String> images;

    private List<ProductDto> products;

    private String pageType;

    public void addImage(String img){
        if(images == null){
            images = new ArrayList<String>();
        }
        images.add(img);
    }

    public void addProduct(ProductDto product){
        if(products == null){
            products = new ArrayList<ProductDto>();
        }
        products.add(product);
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getimage() {
        return image;
    }

    public void setimage(String image) {
        this.image = image;
    }

    public List<String> getImages() {
        return images;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }

    public String getPageType() {
        return pageType;
    }

    public void setPageType(String pageType) {
        this.pageType = pageType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<ProductDto> getProducts() {
        return products;
    }

    public void setProducts(List<ProductDto> products) {
        this.products = products;
    }
}
