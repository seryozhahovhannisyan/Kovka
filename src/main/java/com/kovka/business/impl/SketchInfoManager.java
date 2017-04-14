package com.kovka.business.impl;

import com.kovka.business.ISketchInfoManager;
import com.kovka.common.data.SketchInfo;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.dao.ISketchInfoDao;
import org.springframework.transaction.annotation.Transactional;


@Transactional(readOnly = true)
public class SketchInfoManager implements ISketchInfoManager {

    private ISketchInfoDao dao;

    public void setDao(ISketchInfoDao dao) {
        this.dao = dao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void update(SketchInfo data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
