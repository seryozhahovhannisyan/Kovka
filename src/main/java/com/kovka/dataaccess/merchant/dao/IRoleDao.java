package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.merchant.Role;
import com.kovka.common.exception.DatabaseException;

import java.util.List;
import java.util.Map;

public interface IRoleDao {

    public void add(Role data) throws DatabaseException;

    public Role getById(Long id) throws DatabaseException;

    public Role getLastRole(Long companyId) throws DatabaseException;

    public List<Role> getByParams(Map<String, Object> params) throws DatabaseException;

    public int getCountByParams(Map<String, Object> params) throws DatabaseException;

    public void update(Role data) throws DatabaseException;

    public void delete(Long id) throws DatabaseException;
}
