package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.merchant.Branch;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface IBranchDao {

    public void add(Branch data) throws DatabaseException;

    public Branch getById(Long id) throws DatabaseException, EntityNotFoundException;

    public List<Branch> getByParams(Map<String, Object> params) throws DatabaseException;

    public List<Branch> getByParamsFull(Map<String, Object> params) throws DatabaseException;

    public int getCountByParams(Map<String, Object> params) throws DatabaseException;

    public void update(Branch data) throws DatabaseException, EntityNotFoundException;

    public void activate(Branch data) throws DatabaseException, EntityNotFoundException;

    public void delete(Long id) throws DatabaseException, EntityNotFoundException;

    public void forceDelete(Long id) throws DatabaseException, EntityNotFoundException;

}
