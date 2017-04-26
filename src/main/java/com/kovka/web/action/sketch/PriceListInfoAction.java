package com.kovka.web.action.sketch;

import com.kovka.business.IPriceListInfoManager;
import com.kovka.business.ISketchManager;
import com.kovka.common.data.PriceListInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.DataConverter;
import com.kovka.common.util.Utils;
import com.kovka.web.action.BaseAction;
import com.kovka.web.action.dto.ResponseDto;
import com.kovka.web.action.dto.ResponseStatus;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/26/2016.
 */
public class PriceListInfoAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(PriceListInfoAction.class.getSimpleName());

    private ResponseDto dto;

    private IPriceListInfoManager priceListInfoManager;

    private PriceListInfo priceListInfo;
    // for delete
    private Long id;
    private String ides;
    // for add
    private String name;
    private String shortDesc;
    private String title;
    private String description;

    // for search
    private String requestJson;
    private long dataCount;

    public String add() {

        if (Utils.isEmpty(name) ||
                Utils.isEmpty(shortDesc) ||
                Utils.isEmpty(title) ||
                Utils.isEmpty(description)) {
            logger.info("Empty incoming data");
            return INPUT;
        }

        List<PriceListInfo> infos = new ArrayList<PriceListInfo>();
        for (Language language : Language.values()) {
            PriceListInfo info = new PriceListInfo();
            info.setLanguage(language);
            info.setName(name.trim());
//            info.setShortDesc(shortDesc.trim());
//            info.setTitle(title.trim());
//            info.setDescription(description.trim());
            infos.add(info);
        }
        try {
            priceListInfoManager.add(infos);
        } catch (InternalErrorException e) {
            logger.error(e);
            return ERROR;
        }
        return SUCCESS;
    }

    public String view() {
        try {
              priceListInfoManager.getAll();
        } catch (InternalErrorException e) {
            logger.error(e);
        }
        return SUCCESS;
    }

    public String list() {

        try {

//            Map<String, Object> params = DataConverter.convertRequestToParams(requestJson);
//            dataCount = priceListInfoManager.getCountByParams(params);
//
//            long page = Long.valueOf(params.get("page").toString());
//            long count = Long.valueOf(params.get("count").toString());
//            params.put("page", (page - 1) * count);

            List<PriceListInfo> sketches = priceListInfoManager.getAll();
            dto.addResponse("data", sketches);
            dto.addResponse("dataCount", dataCount);
            dto.setResponseStatus(ResponseStatus.SUCCESS);
        } catch (InternalErrorException e) {
            logger.error(e);
            dto.setResponseStatus(ResponseStatus.INTERNAL_ERROR);
        }
        return SUCCESS;
    }

    public String delete() {

        try {
            PriceListInfo priceListInfo = null;//priceListInfoManager.getBy(Language.RUSSIAN);
            priceListInfoManager.delete(priceListInfo);
        } catch (InternalErrorException e) {
            logger.error(e);
        } catch (EntityNotFoundException e) {
            logger.error(e);
        }
        return SUCCESS;
    }


     /*##################################################################################################################
     *                                  GETTERS & SETTERS
     *##################################################################################################################
     */


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

    public void setDataCount(long dataCount) {
        this.dataCount = dataCount;
    }

    public long getDataCount() {
        return dataCount;
    }

    public void setId(String id) {
        try {
            this.id = Long.parseLong(id);
        } catch (Exception e) {
            this.id = -1L;
        }
    }

    public String getRequestJson() {
        return requestJson;
    }

    public void setRequestJson(String requestJson) {
        this.requestJson = requestJson;
    }

    public ResponseDto getDto() {
        return dto;
    }

    public void setDto(ResponseDto dto) {
        this.dto = dto;
    }
}