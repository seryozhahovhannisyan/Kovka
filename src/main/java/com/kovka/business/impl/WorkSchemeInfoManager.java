package com.kovka.business.impl;

import com.kovka.business.IWorkSchemeInfoManager;
import com.kovka.common.data.WorkSchemeInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.dao.IWorkSchemeInfoDao;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Transactional(readOnly = true)
public class WorkSchemeInfoManager implements IWorkSchemeInfoManager {

    private IWorkSchemeInfoDao dao;
    public void setDao(IWorkSchemeInfoDao dao) {
        this.dao = dao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void add(WorkSchemeInfo data) throws InternalErrorException {
        try {
            dao.add(data);
        } catch (DatabaseException e) {e.printStackTrace();
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void add(List<WorkSchemeInfo> data) throws InternalErrorException {
        try {
            for(WorkSchemeInfo info : data){
                dao.add(info);
            }
        } catch (DatabaseException e) {e.printStackTrace();
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<WorkSchemeInfo> getAll() throws InternalErrorException {
        try {
            return dao.getAll();
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<WorkSchemeInfo> getBy(Language language) throws InternalErrorException {
        try {
            return dao.getBy(language);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void update(WorkSchemeInfo data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void delete(WorkSchemeInfo data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.delete(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
