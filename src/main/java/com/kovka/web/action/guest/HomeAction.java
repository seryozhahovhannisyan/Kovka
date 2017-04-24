
package com.kovka.web.action.guest;

import com.kovka.business.ISketchManager;
import com.kovka.common.data.FileData;
import com.kovka.common.data.Sketch;
import com.kovka.common.data.SketchInfo;
import com.kovka.common.data.SketchProduct;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.DataConverter;
import com.kovka.common.util.Utils;
import com.kovka.web.action.BaseAction;
import com.kovka.web.action.dto.BoxDto;
import com.kovka.web.action.dto.ProductDto;
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

    private String id;

    private String search;

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
                    dto.setTitle(currentInfo.getTitle());

                    if (sketch.getMainImage() != null) {
                        String path = sketch.getMainImage().getFileName();
                        if (isLogoExist(path)) {
                            path = getLogo(path);
                            path.replaceAll("\\\\", "/");
                            path.replaceAll("//", "/");
                            dto.setimage(path);
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

    public String loadSketch() {

        try {

            Map<String, Object> params = DataConverter.convertRequestToParams(requestJson);

            long id = Long.valueOf(params.get("id").toString());

            Sketch sketch = sketchManager.getFullCurrentLangById(id);

            BoxDto boxDto = new BoxDto();
            if (sketch.getStatus().getKey() == Status.ACTIVE.getKey()) {
                SketchInfo currentInfo = sketch.getCurrentInfo();

                boxDto.setId("" + sketch.getId());

                boxDto.setName(currentInfo.getName());
                boxDto.setShortDesc(currentInfo.getShortDesc());
                boxDto.setTitle(currentInfo.getTitle());
                boxDto.setDescription(currentInfo.getDescription());

                List<FileData> images = sketch.getImages();
                if (!Utils.isEmpty(images)) {
                    for (FileData fileData : images) {
                        String path = fileData.getFileName();
                        if (fileData.getStatus().getKey() == Status.ACTIVE.getKey() && isLogoExist(path)) {
                            path = getLogo(path);
                            path.replaceAll("\\\\", "/");
                            path.replaceAll("//", "/");
                            boxDto.addImage(path);
                        }
                    }
                }

                List<SketchProduct> products = sketch.getProducts();
                if (!Utils.isEmpty(products)) {
                    for (SketchProduct product : products) {
                        String path = product.getImage().getFileName();
                        if (product.getStatus().getKey() == Status.ACTIVE.getKey() &&
                                product.getImage().getStatus().getKey() == Status.ACTIVE.getKey() &&
                                isProductImageExist(path)) {
                            path = getProductImage(path);
                            path.replaceAll("\\\\", "/");
                            path.replaceAll("//", "/");
                            boxDto.addProduct(new ProductDto(product.getPrice(), path));
                        }
                    }
                }
            }

            dto.addResponse("data", boxDto);
            dto.setResponseStatus(ResponseStatus.SUCCESS);
        } catch (InternalErrorException e) {
            logger.error(e);
            dto.setResponseStatus(ResponseStatus.INTERNAL_ERROR);
        } catch (DataParseException e) {
            logger.error(e);
            dto.setResponseStatus(ResponseStatus.INVALID_PARAMETER);
        } catch (EntityNotFoundException e) {
            logger.error(e);
            dto.setResponseStatus(ResponseStatus.RESOURCE_NOT_FOUND);
        }
        return SUCCESS;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
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
