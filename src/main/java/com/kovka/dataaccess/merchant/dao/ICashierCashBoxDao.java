package com.kovka.dataaccess.merchant.dao;


import com.kovka.common.data.transaction.cashbox.CashierCashBox;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface ICashierCashBoxDao {

    public void add(CashierCashBox data) throws DatabaseException;

    public CashierCashBox getById(Long id) throws DatabaseException, EntityNotFoundException;

    public List<CashierCashBox> getByParams(Map<String, Object> params) throws DatabaseException;

    public int getCountByParams(Map<String, Object> params) throws DatabaseException;

    public void update(CashierCashBox data) throws DatabaseException, EntityNotFoundException;

    public void delete(Long id) throws DatabaseException, EntityNotFoundException;

}
