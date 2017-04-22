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

    private String postImage;

    private List<String> postImages;

    private String pageType;

    public void addImage(String img){
        if(postImages == null){
            postImages = new ArrayList<String>();
        }
        postImages.add(img);
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

    public String getPostImage() {
        return postImage;
    }

    public void setPostImage(String postImage) {
        this.postImage = postImage;
    }

    public List<String> getPostImages() {
        return postImages;
    }

    public void setPostImages(List<String> postImages) {
        this.postImages = postImages;
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
}
