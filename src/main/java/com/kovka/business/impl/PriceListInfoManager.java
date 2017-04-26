package com.kovka.business.impl;

import com.kovka.business.IPriceListInfoManager;
import com.kovka.common.data.PriceListInfo; 
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.dao.IPriceListInfoDao;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Transactional(readOnly = true)
public class PriceListInfoManager implements IPriceListInfoManager {

    private IPriceListInfoDao dao; 
    public void setDao(IPriceListInfoDao dao) {
        this.dao = dao;
    } 

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void add(PriceListInfo data) throws InternalErrorException {
        try {
            dao.add(data);
        } catch (DatabaseException e) {e.printStackTrace();
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void add(List<PriceListInfo> data) throws InternalErrorException {
        try {
            for(PriceListInfo info : data){
                dao.add(info);
            }
        } catch (DatabaseException e) {e.printStackTrace();
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<PriceListInfo> getAll() throws InternalErrorException {
        try {
            return dao.getAll();
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<PriceListInfo> getBy(Language language) throws InternalErrorException {
        try {
            return dao.getBy(language);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void update(PriceListInfo data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void delete(PriceListInfo data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.delete(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
