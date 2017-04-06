package com.kovka.business.merchant;


import com.kovka.common.data.transaction.cashbox.CashierCashBoxProvider;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;
import java.util.Map;

public interface ICashierCashBoxProviderManager {

    public void add(CashierCashBoxProvider data) throws InternalErrorException;

    public CashierCashBoxProvider getById(Long id) throws InternalErrorException, EntityNotFoundException;

    public List<CashierCashBoxProvider> getByParams(Map<String, Object> params) throws InternalErrorException;

    public int getCountByParams(Map<String, Object> params) throws InternalErrorException;

    public void update(CashierCashBoxProvider data) throws InternalErrorException, EntityNotFoundException;

}
