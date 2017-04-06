package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.merchant.CompanyFormRequest;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.ICompanyFormRequestDao;
import com.kovka.dataaccess.merchant.mapper.namespace.CompanyFormRequestMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/21/2016.
 */
public class CompanyFormRequestDao implements ICompanyFormRequestDao {

    private CompanyFormRequestMap map;

    public void setMap(CompanyFormRequestMap map) {
        this.map = map;
    }

    @Override
    public void add(CompanyFormRequest data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<CompanyFormRequest> getByParams(Map<String, Object> params) throws DatabaseException {
        try {
           return map.getByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void activate(CompanyFormRequest companyFormRequest) throws DatabaseException {
        try {
            map.activateCompany(companyFormRequest);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public CompanyFormRequest getById(Long id) throws DatabaseException {
        try {
           return map.getById(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void changeStatus(CompanyFormRequest data) throws DatabaseException {
        try {
            map.changeStatus(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
