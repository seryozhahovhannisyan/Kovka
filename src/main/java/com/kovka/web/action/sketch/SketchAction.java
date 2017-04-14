package com.kovka.web.action.sketch;

import com.kovka.business.ISketchManager;
import com.kovka.common.data.Sketch;
import com.kovka.common.data.SketchInfo;
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
public class SketchAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(SketchAction.class.getSimpleName());

    private ResponseDto dto;

    private ISketchManager sketchManager;

    private Sketch sketch;
    // for delete
    private Long id;
    private String sketchIdes;
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

        Sketch sketch = new Sketch();
        sketch.setStatus(Status.ACTIVE);

        List<SketchInfo> infos = new ArrayList<SketchInfo>();
        for (Language language : Language.values()) {
            SketchInfo info = new SketchInfo();
            info.setLanguage(language);
            info.setName(name.trim());
            info.setShortDesc(shortDesc.trim());
            info.setTitle(title.trim());
            info.setDescription(description.trim());
            infos.add(info);
        }
        sketch.setInfos(infos);
        try {
            sketchManager.add(sketch);
        } catch (InternalErrorException e) {
            logger.error(e);
            return ERROR;
        }
        return SUCCESS;
    }

    public String view() {
        try {
            sketch = sketchManager.getFullById(id);
        } catch (InternalErrorException e) {
            logger.error(e);
        } catch (EntityNotFoundException e) {
            logger.error(e);
        }
        return SUCCESS;
    }

    public String listView() {

        try {
            Map<String, Object> params = DataConverter.convertRequestToParams(requestJson);
            dataCount = sketchManager.getCountByParams(params);
        } catch (InternalErrorException e) {
            logger.error(e);
        } catch (DataParseException e) {
            logger.error(e);
        }
        return SUCCESS;
    }

    public String list() {

        try {

            Map<String, Object> params = DataConverter.convertRequestToParams(requestJson);
            dataCount = sketchManager.getCountByParams(params);

            long page = (Long) params.get("page");
            long count = (Long) params.get("count");
            params.put("page", (page - 1) * count);

            List<Sketch> sketches = sketchManager.getSampleByParams(params);
            dto.addResponse("data", sketches);
            dto.addResponse("dataCount", dataCount);
            dto.setResponseStatus(ResponseStatus.SUCCESS);
        } catch (InternalErrorException e) {
            logger.error(e);
            dto.setResponseStatus(ResponseStatus.INTERNAL_ERROR);
        } catch (DataParseException e) {
            logger.error(e);
            dto.setResponseStatus(ResponseStatus.INVALID_PARAMETER);
        }
        return SUCCESS;
    }

    public String delete() {

        try {
            Sketch sketch = sketchManager.getSampleById(id);
            sketchManager.delete(sketch);
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

    public Sketch getSketch() {
        return sketch;
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

    public void setSketchManager(ISketchManager sketchManager) {
        this.sketchManager = sketchManager;
    }

    public void setSketchIdes(String sketchIdes) {
        this.sketchIdes = sketchIdes;
    }
}