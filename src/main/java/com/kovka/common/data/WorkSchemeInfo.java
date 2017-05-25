package com.kovka.common.data;

import com.kovka.common.data.lcp.Language;

import java.util.List;

/**
 * Created by Serozh on 4/12/2017.
 */
public class WorkSchemeInfo {

    private Long id;
    private Long key;
    private Long parentId;
    private Language language;

    private String name;
    private String description;

    private List<WorkSchemeInfo> children;

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

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<WorkSchemeInfo> getChildren() {
        return children;
    }

    public void setChildren(List<WorkSchemeInfo> children) {
        this.children = children;
    }

    public Long getKey() {
        return key;
    }

    public void setKey(Long key) {
        this.key = key;
    }
}
