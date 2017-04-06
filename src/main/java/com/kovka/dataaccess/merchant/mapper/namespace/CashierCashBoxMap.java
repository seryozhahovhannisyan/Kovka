package com.kovka.dataaccess.merchant.mapper.namespace;


import com.kovka.common.data.transaction.cashbox.CashierCashBox;
import com.kovka.common.data.transaction.cashbox.CompanyCashBox;

import java.util.List;
import java.util.Map;

public interface CashierCashBoxMap {

    public void add(CashierCashBox data);

    public CashierCashBox getById(Long id);

    public CompanyCashBox getLastByCashierId(Long id);

    public List<CashierCashBox> getByParams(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public void update(CashierCashBox data);

    public void delete(Long id);

}
