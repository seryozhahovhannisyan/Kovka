package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.merchant.CompanyFormResponse;


public interface CompanyFormResponseMap {

    @Deprecated
    public void add(CompanyFormResponse companyFormResponse);

    public CompanyFormResponse getById(Long id);

}
