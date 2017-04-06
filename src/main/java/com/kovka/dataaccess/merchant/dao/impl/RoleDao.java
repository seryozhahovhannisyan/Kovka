package com.kovka.dataaccess.merchant.dao.impl;

import com.kovka.common.data.merchant.Role;
import com.kovka.common.exception.DatabaseException;
import com.kovka.dataaccess.merchant.dao.IRoleDao;
import com.kovka.dataaccess.merchant.mapper.namespace.RoleMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/21/2016.
 */
public class RoleDao implements IRoleDao {

    private RoleMap map;

    public void setMap(RoleMap map) {
        this.map = map;
    }

    @Override
    public void add(Role data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public Role getById(Long id) throws DatabaseException {
        try {
            return map.getById(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public Role getLastRole(Long companyId) throws DatabaseException {
        try {
            return map.getLastRole(companyId);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<Role> getByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public int getCountByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getCountByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(Role data) throws DatabaseException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void delete(Long id) throws DatabaseException {
        try {
            map.delete(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
