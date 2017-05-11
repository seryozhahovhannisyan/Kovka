package com.kovka.common.data;

import com.kovka.common.data.lcp.Language;

/**
 * Created by Serozh on 4/12/2017.
 */
public class AboutInfo {

    private Long id;
    private Long aboutId;
    private Language language;

    private String title;
    private String address;
    private String shortDesc;
    private String description;

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

    public Long getAboutId() {
        return aboutId;
    }

    public void setAboutId(Long aboutId) {
        this.aboutId = aboutId;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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
