package com.kovka.common.data;

import com.kovka.common.data.lcp.Language;

/**
 * Created by Serozh on 4/12/2017.
 */
public class SketchInfo {

    private Long id;
    private Long sketchId;
    private Language language;

    private String name;
    private String shortDesc;

    private String title;
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

    public Long getSketchId() {
        return sketchId;
    }

    public void setSketchId(Long sketchId) {
        this.sketchId = sketchId;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


}
