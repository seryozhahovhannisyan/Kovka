package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.cashbox.CompanyCashBox;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.merchant.dao.ICompanyCashBoxDao;
import com.kovka.dataaccess.merchant.mapper.namespace.CompanyCashBoxMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/21/2016.
 */
public class CompanyCashBoxDao implements ICompanyCashBoxDao {

    private CompanyCashBoxMap map;

    public void setMap(CompanyCashBoxMap map) {
        this.map = map;
    }

    @Override
    public void add(CompanyCashBox data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public CompanyCashBox getById(Long id) throws DatabaseException, EntityNotFoundException {
        try {
            CompanyCashBox data = map.getById(id);
            if (data == null) {
                throw new EntityNotFoundException(String.format("Could not found CompanyCashBox id=[%d]",id));
            }
            return data;
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public CompanyCashBox getByCompanyId(Long companyId) throws DatabaseException, EntityNotFoundException {
        try {
            CompanyCashBox data = map.getByCompanyId(companyId);
            if (data == null) {
                throw new EntityNotFoundException(String.format("Could not found CompanyCashBox companyId=[%d]",companyId));
            }
            return data;
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<CompanyCashBox> getByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public String getAvailableRateValues(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getAvailableRateValues(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(CompanyCashBox data) throws DatabaseException, EntityNotFoundException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void activate(CompanyCashBox data) throws DatabaseException, EntityNotFoundException {
        try {
            map.activate(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void delete(CompanyCashBox data) throws DatabaseException, EntityNotFoundException {
        try {
            map.delete(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void forceDelete(Long id) throws DatabaseException, EntityNotFoundException {
        try {
            map.forceDelete(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
