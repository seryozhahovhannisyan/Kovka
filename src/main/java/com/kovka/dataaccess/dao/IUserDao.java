package com.kovka.dataaccess.dao;

import com.kovka.common.data.User;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface IUserDao {

    public void add(User data) throws DatabaseException;

    public User getById(Long id) throws DatabaseException, EntityNotFoundException;

    public User login(Map<String, Object> params) throws DatabaseException, EntityNotFoundException;

    public List<User> getByParams(Map<String, Object> params) throws DatabaseException;

    public void update(User data) throws DatabaseException, EntityNotFoundException;

    public void delete(User data) throws DatabaseException, EntityNotFoundException;

    public void forceDelete(Long id) throws DatabaseException, EntityNotFoundException;

}