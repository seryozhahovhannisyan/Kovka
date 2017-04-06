package com.kovka.dataaccess.merchant.mapper.namespace;


import com.kovka.common.data.transaction.cashbox.CashierCashBoxProvider;

import java.util.List;
import java.util.Map;

public interface CashierCashBoxProviderMap {

    public void add(CashierCashBoxProvider data);

    public CashierCashBoxProvider getById(Long id);

    public List<CashierCashBoxProvider> getByParams(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public void update(CashierCashBoxProvider data);

    public void delete(Long id);

}
