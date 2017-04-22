
package com.kovka.web.action.guest;

import com.kovka.business.ISketchManager;
import com.kovka.common.data.Sketch;
import com.kovka.common.data.SketchInfo;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.DataConverter;
import com.kovka.web.action.BaseAction;
import com.kovka.web.action.dto.BoxDto;
import com.kovka.web.action.dto.ResponseDto;
import com.kovka.web.action.dto.ResponseStatus;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by User on 20.04.2017.
 */
public class HomeAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(HomeAction.class.getSimpleName());

    private ResponseDto dto;

    private ISketchManager sketchManager;

    private String requestJson;

    public String go() {
        return SUCCESS;
    }

    public String loadSketches() {

        try {

            Map<String, Object> params = DataConverter.convertRequestToParams(requestJson);

            long page = Long.valueOf(params.get("page").toString());
            long count = Long.valueOf(params.get("count").toString());
            params.put("page", (page - 1) * count);

            List<Sketch> sketches = sketchManager.getSampleByParams(params);

            List<BoxDto> boxDtos = new ArrayList<BoxDto>();
            for (Sketch sketch : sketches) {
                if (sketch.getStatus().getKey() == Status.ACTIVE.getKey()) {
                    SketchInfo currentInfo = sketch.getCurrentInfo();

                    BoxDto dto = new BoxDto();
                    dto.setId("" + sketch.getId());

                    dto.setName(currentInfo.getName());
                    dto.setShortDesc(currentInfo.getShortDesc());

                    if (sketch.getMainImage() != null) {
                        String path = sketch.getMainImage().getFileName();
                        if (isLogoExist( path)) {
                            path = getLogo( path);
                            path.replaceAll("\\\\", "/");
                            path.replaceAll("//", "/");
                            dto.setPostImage(path);
                        }
                    }

                    boxDtos.add(dto);
                }
            }

            // calculates max amount of pages
            long maxPage = (page + 1) * ELEMENT_COUNT_PER_PAGE_SMALL;
            if (maxPage < count) {
                dto.addResponse("loadMore", true);
            }


            dto.addResponse("data", boxDtos);
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

    public ResponseDto getDto() {
        return dto;
    }

    public void setDto(ResponseDto dto) {
        this.dto = dto;
    }

    public void setSketchManager(ISketchManager sketchManager) {
        this.sketchManager = sketchManager;
    }

    public void setRequestJson(String requestJson) {
        this.requestJson = requestJson;
    }
}
