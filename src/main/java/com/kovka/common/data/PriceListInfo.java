package com.kovka.common.data;

import com.kovka.common.data.lcp.Language;

/**
 * Created by Serozh on 4/12/2017.
 */
public class PriceListInfo {

    private Long id;
    private Language language;

    private String name;
    private String budgetary;
    private String standard;
    private String premium;
    private String productionTime;

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

    public String getBudgetary() {
        return budgetary;
    }

    public void setBudgetary(String budgetary) {
        this.budgetary = budgetary;
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard;
    }

    public String getPremium() {
        return premium;
    }

    public void setPremium(String premium) {
        this.premium = premium;
    }

    public String getProductionTime() {
        return productionTime;
    }

    public void setProductionTime(String productionTime) {
        this.productionTime = productionTime;
    }
}
