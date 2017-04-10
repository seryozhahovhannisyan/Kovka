package com.kovka.dataaccess.dao.impl;

import com.kovka.common.data.User;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.dao.IUserDao;
import com.kovka.dataaccess.mapper.namespace.UserMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/21/2016.
 */
public class UserDao implements IUserDao {

    private UserMap map;

    public void setMap(UserMap map) {
        this.map = map;
    }

    @Override
    public void add(User data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public User getById(Long id) throws DatabaseException, EntityNotFoundException {
        try {
            User data = map.getById(id);
            if (data == null) {
                throw new EntityNotFoundException(String.format("Could not found User id=[%d]", id));
            }
            return data;
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public User login(Map<String, Object> params) throws DatabaseException, EntityNotFoundException {
        try {
            User data = map.login(params);
            if (data == null) {
                throw new EntityNotFoundException(String.format("Could not found User params=[%s]", params.toString()));
            }
            return data;
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<User> getByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(User data) throws DatabaseException, EntityNotFoundException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void delete(User data) throws DatabaseException, EntityNotFoundException {
        try {
            map.delete(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void forceDelete(Long id) throws DatabaseException, EntityNotFoundException {
        try {
            map.forceDelete(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
