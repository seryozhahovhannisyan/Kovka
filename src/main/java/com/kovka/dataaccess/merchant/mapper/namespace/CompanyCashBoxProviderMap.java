package com.kovka.dataaccess.merchant.mapper.namespace;


import com.kovka.common.data.transaction.cashbox.CompanyCashBoxProvider;

import java.util.List;
import java.util.Map;

public interface CompanyCashBoxProviderMap {

    public void add(CompanyCashBoxProvider data);

    public CompanyCashBoxProvider getById(Long id);

    public List<CompanyCashBoxProvider> getByParams(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public void update(CompanyCashBoxProvider data);

    public void delete(Long id);

}
