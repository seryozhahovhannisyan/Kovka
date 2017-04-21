
package com.kovka.web.action.guest;

import com.kovka.business.ISketchManager;
import com.kovka.web.action.BaseAction;
import com.kovka.web.action.dto.ResponseDto;
import com.kovka.web.action.sketch.SketchAction;
import org.apache.log4j.Logger;

/**
 * Created by User on 20.04.2017.
 */
public class HomeAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(HomeAction.class.getSimpleName());

    private ResponseDto dto;

    private ISketchManager sketchManager;

    public String go() {
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
}
