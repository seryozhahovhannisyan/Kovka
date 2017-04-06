package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.cashbox.BranchCashBoxProvider;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.IBranchCashBoxProviderDao;
import com.kovka.dataaccess.merchant.mapper.namespace.BranchCashBoxProviderMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/21/2016.
 */
public class BranchCashBoxProviderDao implements IBranchCashBoxProviderDao {

    private BranchCashBoxProviderMap map;

    public void setMap(BranchCashBoxProviderMap map) {
        this.map = map;
    }

    @Override
    public void add(List<BranchCashBoxProvider> data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public BranchCashBoxProvider getById(Long id) throws DatabaseException {
        try {
            return map.getById(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<BranchCashBoxProvider> getByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public int getCountByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getCountByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(BranchCashBoxProvider data) throws DatabaseException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void delete(Long id) throws DatabaseException {
        try {
            map.delete(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
