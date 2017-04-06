package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.merchant.Cashier;

import java.util.List;
import java.util.Map;

public interface CashierMap {

    public void add(Cashier data);

    public Cashier getById(Long id);

    public Cashier login(Map<String, Object> params);

    public List<Cashier> getByParams(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public List<Cashier> getByParamsFull(Map<String, Object> params);

    public void update(Cashier data);

    public void activate(Cashier data);

    public void delete(Long id);

    public void forceDelete(Long id);

}
