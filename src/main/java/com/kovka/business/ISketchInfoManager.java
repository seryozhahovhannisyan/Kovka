package com.kovka.business;

import com.kovka.common.data.SketchInfo;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

public interface ISketchInfoManager {

    public void update(SketchInfo data) throws InternalErrorException, EntityNotFoundException;

}