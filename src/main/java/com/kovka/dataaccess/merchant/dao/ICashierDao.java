package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.merchant.Cashier;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface ICashierDao {

    public void add(Cashier data) throws DatabaseException;

    public Cashier getById(Long id) throws DatabaseException, EntityNotFoundException;

    public Cashier login(String username, String password) throws DatabaseException, EntityNotFoundException;

    public List<Cashier> getByParams(Map<String, Object> params) throws DatabaseException;

    public int getCountByParams(Map<String, Object> params) throws DatabaseException;

    public List<Cashier> getByParamsFull(Map<String, Object> params) throws DatabaseException;

    public void update(Cashier data) throws DatabaseException, EntityNotFoundException;

    public void activate(Cashier data) throws DatabaseException, EntityNotFoundException;

    public void delete(Long id) throws DatabaseException, EntityNotFoundException;

    public void forceDelete(Long id) throws DatabaseException, EntityNotFoundException;
}
