package com.kovka.web.action.admin;

import com.kovka.business.IPriceListInfoManager;
import com.kovka.common.data.PriceListInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.DataConverter;
import com.kovka.common.util.Utils;
import com.kovka.web.action.BaseAction;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Serozh on 6/26/2016.
 */
public class PriceListInfoAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(PriceListInfoAction.class.getSimpleName());
    public List<PriceListInfo> priceListInfos;
    private IPriceListInfoManager priceListInfoManager;
    //all count
    private long dataCount;
    //add/edit
    private String name;
    private String budgetary;
    private String standard;
    private String premium;
    private String productionTime;
    //update
    private String id;
    //delete
    private String key;

    public String add() {

        Long key = System.currentTimeMillis();
        if (Utils.isEmpty(name)) {
            logger.info("name is  required");
            session.put(MESSAGE, "name is requeired");
            return ERROR;

        }

        List<PriceListInfo> infos = new ArrayList<PriceListInfo>();
        for (Language language : Language.values()) {
            PriceListInfo info = new PriceListInfo();
            info.setLanguage(language);
            info.setKey(key);
            info.setName(name.trim());
            info.setBudgetary(budgetary.trim());
            info.setStandard(standard.trim());
            info.setPremium(premium.trim());
            info.setProductionTime(productionTime.trim());

            infos.add(info);
        }
        try {
            priceListInfoManager.add(infos);
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }
        return SUCCESS;
    }

    public String list() {
        try {
            priceListInfos = priceListInfoManager.getAll();
            if(!Utils.isEmpty(priceListInfos)){
                dataCount = priceListInfos.size();
            }
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }
        return SUCCESS;
    }

    public String update() {

        PriceListInfo info = new PriceListInfo();

        info.setName(name.trim());
        info.setBudgetary(budgetary.trim());
        info.setStandard(standard.trim());
        info.setPremium(premium.trim());
        info.setProductionTime(productionTime.trim());

        try {
            info.setId(DataConverter.convertToLong(id));
            priceListInfoManager.update(info);
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (EntityNotFoundException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (DataParseException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }
        return SUCCESS;
    }

    public String delete() {

        try {
            priceListInfoManager.delete(DataConverter.convertToLong(key));
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (EntityNotFoundException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (DataParseException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }
        return SUCCESS;
    }


     /*##################################################################################################################
     *                                  GETTERS & SETTERS
     *##################################################################################################################
     */

    public long getDataCount() {
        return dataCount;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public List<PriceListInfo> getPriceListInfos() {
        return priceListInfos;
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

    public void setPriceListInfoManager(IPriceListInfoManager priceListInfoManager) {
        this.priceListInfoManager = priceListInfoManager;
    }
}