package com.kovka.business.impl;

import com.kovka.business.IUserManager;
import com.kovka.common.data.User;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.dao.IUserDao;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Transactional(readOnly = true)
public class UserManager implements IUserManager {

    private IUserDao dao;

    public void setDao(IUserDao dao) {
        this.dao = dao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void add(User data) throws InternalErrorException {
        try {
            dao.add(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public User login(String username, String password) throws InternalErrorException, EntityNotFoundException {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("username", username);
        params.put("password", password);

        try {
            return dao.login(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<User> getAll()  throws InternalErrorException {
        try {
            return dao.getAll();
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

}
