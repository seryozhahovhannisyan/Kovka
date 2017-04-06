package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.transaction.cashbox.BranchCashBoxTaker;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.IBranchCashBoxTakerDao;
import com.kovka.dataaccess.merchant.mapper.namespace.BranchCashBoxTakerMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/21/2016.
 */
public class BranchCashBoxTakerDao implements IBranchCashBoxTakerDao {

    private BranchCashBoxTakerMap map;

    public void setMap(BranchCashBoxTakerMap map) {
        this.map = map;
    }

    @Override
    public void add(List<BranchCashBoxTaker> data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public BranchCashBoxTaker getById(Long id) throws DatabaseException {
        try {
            return map.getById(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<BranchCashBoxTaker> getByParams(Map<String, Object> params) throws DatabaseException {
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
    public void update(BranchCashBoxTaker data) throws DatabaseException {
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
