package com.kovka.web.action.guest;

import com.kovka.business.IFileDataManager;
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
public class MachineAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(MachineAction.class.getSimpleName());

    private ResponseDto dto;

    private IFileDataManager dataManager;

    public String loadMachines() {

        try {

            List<FileData> datas = dataManager.getMachineData();

            List<String> machines = new ArrayList<String>();
            for (FileData data : datas) {
                if (data.getStatus().getKey() == Status.ACTIVE.getKey()) {

                    String path = data.getFileName();
                    if (isMachineImageExist(path)) {
                        path = getMachineImage(path);
                        path.replaceAll("\\\\", "/");
                        path.replaceAll("//", "/");
                        machines.add(path);
                    }

                }
            }

            dto.addResponse("data", machines);
            dto.setResponseStatus(ResponseStatus.SUCCESS);
        } catch (InternalErrorException e) {
            logger.error(e);
            dto.setResponseStatus(ResponseStatus.INTERNAL_ERROR);
        }
        return SUCCESS;
    }

    public ResponseDto getDto() {
        return dto;
    }

    public void setDto(ResponseDto dto) {
        this.dto = dto;
    }

    public void setDataManager(IFileDataManager dataManager) {
        this.dataManager = dataManager;
    }
}
