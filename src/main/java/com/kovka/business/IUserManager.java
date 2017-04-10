package com.kovka.business;

import com.kovka.common.data.User;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;
import java.util.Map;

public interface IUserManager {

    public void add(User data) throws InternalErrorException;

    public User getById(Long id) throws InternalErrorException, EntityNotFoundException;

    public User login(String username, String password) throws InternalErrorException, EntityNotFoundException;

    public List<User> getByParams(Map<String, Object> params) throws InternalErrorException;

    public void update(User data) throws InternalErrorException, EntityNotFoundException;

    public void delete(User data) throws InternalErrorException, EntityNotFoundException;

    public void forceDelete(Long id) throws InternalErrorException, EntityNotFoundException;

}