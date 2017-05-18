package com.kovka.web.action.guest;

import com.kovka.business.IFileDataManager;
import com.kovka.business.IPriceListInfoManager;
import com.kovka.common.data.FileData;
import com.kovka.common.data.PriceListInfo;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.web.action.BaseAction;
import com.kovka.web.action.dto.ResponseDto;
import com.kovka.web.action.dto.ResponseStatus;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by User on 20.04.2017.
 */
public class PriceListAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(PriceListAction.class.getSimpleName());

    private IPriceListInfoManager priceListInfoManager;

    private List<PriceListInfo> priceLists;



    public String loadPriceList() {

        try {

            priceLists = priceListInfoManager.getBy(getToLang());


        } catch (InternalErrorException e) {
        }
        return SUCCESS;
    }

    public List<PriceListInfo> getPriceLists() {
        return priceLists;
    }

    public void setPriceListInfoManager(IPriceListInfoManager priceListInfoManager) {
        this.priceListInfoManager = priceListInfoManager;
    }
}
