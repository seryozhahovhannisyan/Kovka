package com.kovka.dataaccess.merchant.mapper.namespace;


import com.kovka.common.data.transaction.cashbox.BranchCashBoxTaker;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface BranchCashBoxTakerMap {

    public void add(List<BranchCashBoxTaker> data);

    public BranchCashBoxTaker getById(Long id);

    public Set<BranchCashBoxTaker> getByProviderId(Long id);

    public List<BranchCashBoxTaker> getByParams(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public void update(BranchCashBoxTaker data);

    public void delete(Long id);

}
