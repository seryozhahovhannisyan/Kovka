package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.merchant.CompanyFormResponse;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;


public interface ICompanyFormResponseDao {

    @Deprecated
    public void add(CompanyFormResponse companyFormResponse) throws DatabaseException;

    public CompanyFormResponse getById(Long id) throws DatabaseException, EntityNotFoundException;

}
