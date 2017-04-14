package com.kovka.business.impl;

import com.kovka.business.ISketchProductManager;
import com.kovka.common.data.SketchProduct;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.dao.ISketchProductDao;
import org.springframework.transaction.annotation.Transactional;


@Transactional(readOnly = true)
public class SketchProductManager implements ISketchProductManager {

    private ISketchProductDao dao;

    public void setDao(ISketchProductDao dao) {
        this.dao = dao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void update(SketchProduct data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void delete(SketchProduct data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
