package com.kovka.business.merchant.impl;

import com.kovka.business.merchant.IMerchantLoggerManager;
import com.kovka.common.data.merchant.MerchantLogger;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.merchant.dao.IMerchantLoggerDao;
import org.springframework.transaction.annotation.Transactional;


@Transactional(readOnly = true)
public class MerchantLoggerManagerImpl implements IMerchantLoggerManager {

    private IMerchantLoggerDao dao;

    public void setDao(IMerchantLoggerDao dao) {
        this.dao = dao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class, value = "MerchantTM")
    public void add(MerchantLogger data) throws InternalErrorException {
        try {
            dao.add(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
