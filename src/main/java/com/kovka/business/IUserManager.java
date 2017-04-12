package com.kovka.business;

import com.kovka.common.data.User;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;

public interface IUserManager {

    public void add(User data) throws InternalErrorException;

    public User login(String username, String password) throws InternalErrorException, EntityNotFoundException;

    public List<User> getAll() throws InternalErrorException;

}