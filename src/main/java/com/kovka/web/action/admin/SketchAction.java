package com.kovka.web.action.admin;

import com.kovka.business.ISketchManager;
import com.kovka.common.data.Sketch;
import com.kovka.common.data.SketchInfo;
import com.kovka.common.data.lcp.Category;
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
import java.util.HashMap;
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
    public List<SketchInfo> infosForEdit;
    // for delete
    private Long id;
    private Long mainImageId;
    // for add
    private String category;
    private String name;
    private String shortDesc;
    private String title;
    private String description;

    // for search
    private String requestJson;
    private long dataCount;
    //
    private String sortIdes;

    public String add() {

        if (Utils.isEmpty(name) ||
                Utils.isEmpty(shortDesc) ||
                Utils.isEmpty(title)) {
            logger.info("Empty incoming data");
            return INPUT;
        }

        description = description.replaceAll("vc_col-sm-6", "vc_col-sm-10")
                .replaceAll("vc_col-sm-8", "vc_col-sm-10")
                .replaceAll("vc_col-sm-12", "vc_col-sm-10");

        Category cat = Category.MAIN;

        try {
            cat = Category.valueOf(Integer.valueOf(category));
        } catch (Exception e) {
            logger.warn(e);
        }

        Sketch sketch = new Sketch();
        sketch.setCategory(cat);
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
            infosForEdit = sketch.getInfos();
        } catch (InternalErrorException e) {
            logger.error(e);
        } catch (EntityNotFoundException e) {
            logger.error(e);
        }
        return SUCCESS;
    }

    public String listView() {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("count",  10);
        params.put("page",   1);
        try {
            dataCount = sketchManager.getCountByParams(params);
        } catch (InternalErrorException e) {
            logger.error(e);
        }
        return SUCCESS;
    }

    public String sort() {
        try {

            List<Long> ides = DataConverter.convertStringIdesToLong(sortIdes);
            sketchManager.sort(ides);

        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return INPUT;
        } catch (DataParseException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return INPUT;
        } catch (EntityNotFoundException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return INPUT;
        }
        return SUCCESS;
    }

    public String list() {

        try {

            Map<String, Object> params = DataConverter.convertRequestToParams(requestJson);
            dataCount = sketchManager.getCountByParams(params);

            long page = Long.valueOf(params.get("page").toString());
            long count = Long.valueOf(params.get("count").toString());
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

    public String sketchImageDefault() {

        Sketch sketch = new Sketch();
        sketch.setId(id);
        sketch.setMainImageId(mainImageId);

        try {

            sketchManager.markImageDefault(sketch);
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (EntityNotFoundException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        }

        return SUCCESS;
    }

    public String edit() {

        Sketch sketch = new Sketch();
        sketch.setId(id);
        sketch.setInfos(infosForEdit);

        try {

            sketchManager.update(sketch);
        } catch (InternalErrorException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
        } catch (EntityNotFoundException e) {
            logger.error(e);
            session.put(MESSAGE, "Internal Server Exception");
            return ERROR;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Sketch getSketch() {
        return sketch;
    }

    public List<SketchInfo> getInfosForEdit() {
        return infosForEdit;
    }
    public void setInfosForEdit(List<SketchInfo> infosForEdit) {
        this.infosForEdit = infosForEdit;
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

    public long getDataCount() {
        return dataCount;
    }

    public void setDataCount(long dataCount) {
        this.dataCount = dataCount;
    }

    public void setId(String id) {
        try {
            this.id = Long.parseLong(id);
        } catch (Exception e) {
            this.id = -1L;
        }
    }

    public void setMainImageId(String mainImageId) {
        try {
            this.mainImageId = Long.parseLong(mainImageId);
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
}