package com.kovka.dataaccess.merchant.dao;


import com.kovka.common.data.transaction.cashbox.BranchCashBoxProvider;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface IBranchCashBoxProviderDao {

    public void add(List<BranchCashBoxProvider> data) throws DatabaseException;

    public BranchCashBoxProvider getById(Long id) throws DatabaseException, EntityNotFoundException;

    public List<BranchCashBoxProvider> getByParams(Map<String, Object> params) throws DatabaseException;

    public int getCountByParams(Map<String, Object> params) throws DatabaseException;

    public void update(BranchCashBoxProvider data) throws DatabaseException, EntityNotFoundException;

    public void delete(Long id) throws DatabaseException, EntityNotFoundException;

}
