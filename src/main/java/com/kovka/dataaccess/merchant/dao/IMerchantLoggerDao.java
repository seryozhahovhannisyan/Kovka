package com.kovka.dataaccess.merchant.dao;

import com.kovka.common.data.merchant.MerchantLogger;
import com.kovka.common.exception.DatabaseException;

public interface IMerchantLoggerDao {

    public void add(MerchantLogger data) throws DatabaseException;
}
