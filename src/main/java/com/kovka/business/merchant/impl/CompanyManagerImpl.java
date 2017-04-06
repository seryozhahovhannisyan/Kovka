package com.kovka.business.merchant.impl;

import com.kovka.business.merchant.ICompanyManager;
import com.kovka.common.data.merchant.Company;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.merchant.dao.IBranchDao;
import com.kovka.dataaccess.merchant.dao.ICashierDao;
import com.kovka.dataaccess.merchant.dao.ICompanyDao;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;


@Transactional(readOnly = true)
public class CompanyManagerImpl implements ICompanyManager {

    private ICompanyDao dao;
    private IBranchDao branchDao;
    private ICashierDao cashierDao;

    public void setDao(ICompanyDao dao) {
        this.dao = dao;
    }

    public void setBranchDao(IBranchDao branchDao) {
        this.branchDao = branchDao;
    }

    public void setCashierDao(ICashierDao cashierDao) {
        this.cashierDao = cashierDao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class, value = "MerchantTM")
    public void add(Company data) throws InternalErrorException {
        try {
            dao.add(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public Company getById(Long id) throws InternalErrorException, EntityNotFoundException {
        try {
            return dao.getById(id);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public Company getByName(String name) throws InternalErrorException, EntityNotFoundException {
        try {
            return dao.getByName(name);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<Company> getByParamsFull(Map<String, Object> params) throws InternalErrorException {
        try {
            return dao.getByParamsFull(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<Company> getByParams(Map<String, Object> params) throws InternalErrorException {
        try {
            return dao.getByParams(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class, value = "MerchantTM")
    public void update(Company data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class, value = "MerchantTM")
    public void delete(Company data) throws InternalErrorException, EntityNotFoundException {
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
