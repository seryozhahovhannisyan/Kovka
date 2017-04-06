package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.cashbox.BranchCashBox;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.IBranchCashBoxDao;
import com.kovka.dataaccess.merchant.mapper.namespace.BranchCashBoxMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/21/2016.
 */
public class BranchCashBoxDao implements IBranchCashBoxDao {

    private BranchCashBoxMap map;

    public void setMap(BranchCashBoxMap map) {
        this.map = map;
    }

    @Override
    public void add(BranchCashBox data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public BranchCashBox getById(Long id) throws DatabaseException {
        try {
            return map.getById(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<BranchCashBox> getByParams(Map<String, Object> params) throws DatabaseException {
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
    public void update(BranchCashBox data) throws DatabaseException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void provideAmount(Map<String, Object> params) throws DatabaseException {
        try {
            map.provideAmount(params);
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
