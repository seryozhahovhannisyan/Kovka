package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.merchant.Branch;

import java.util.List;
import java.util.Map;

public interface BranchMap {

    public void add(Branch data);

    public Branch getByCompanyId(Long companyId);

    public Branch getById(Long id);

    public List<Branch> getByParams(Map<String, Object> params);

    public List<Branch> getByParamsFull(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public void update(Branch data);

    public void activate(Branch data);

    public void delete(Long id);

    public void forceDelete(Long id);

}
