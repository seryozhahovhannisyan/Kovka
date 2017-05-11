package com.kovka.web.action.dto;

/**
 * Created by Serozh on 4/22/2017.
 */
public class ProductDto {

    private String price;
    private String image;

    public ProductDto(String price, String image) {
        this.price = price;
        this.image = image;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
