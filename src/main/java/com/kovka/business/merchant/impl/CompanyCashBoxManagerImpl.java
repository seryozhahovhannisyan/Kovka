package com.kovka.business.merchant.impl;

import com.kovka.business.merchant.ICompanyCashBoxManager;
import com.kovka.common.data.transaction.cashbox.CompanyCashBox;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.merchant.dao.ICompanyCashBoxDao;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;


@Transactional(readOnly = true)
public class CompanyCashBoxManagerImpl implements ICompanyCashBoxManager {

    private ICompanyCashBoxDao dao;

    public void setDao(ICompanyCashBoxDao dao) {
        this.dao = dao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class, value = "MerchantTM")
    public void add(CompanyCashBox data) throws InternalErrorException {
        try {
            dao.add(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public CompanyCashBox getById(Long id) throws InternalErrorException, EntityNotFoundException {
        try {
            return dao.getById(id);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public CompanyCashBox getByCompanyId(Long companyId) throws InternalErrorException, EntityNotFoundException {
        try {
            return dao.getByCompanyId(companyId);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }



    @Override
    public List<CompanyCashBox> getByParams(Map<String, Object> params) throws InternalErrorException {
        try {
            return dao.getByParams(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class, value = "MerchantTM")
    public void update(CompanyCashBox data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class, value = "MerchantTM")
    public void delete(CompanyCashBox data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.delete(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class, value = "MerchantTM")
    public void forceDelete(Long id) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.forceDelete(id);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
