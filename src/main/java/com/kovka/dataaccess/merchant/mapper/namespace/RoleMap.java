package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.merchant.Role;

import java.util.List;
import java.util.Map;

public interface RoleMap {

    public void add(Role data);

    public Role getById(Long id);

    public Role getLastRole(Long companyId);

    public List<Role> getByParams(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public void update(Role data);

    public void delete(Long id);

}
