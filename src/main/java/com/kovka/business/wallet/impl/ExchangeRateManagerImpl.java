package com.kovka.business.wallet.impl;

import com.kovka.business.wallet.IExchangeRateManager;
import com.kovka.common.data.wallet.ExchangeRate;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.wallet.dao.IExchangeRateDao;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by htdev001 on 8/26/14.
 */
@Transactional(readOnly = true)
public class ExchangeRateManagerImpl implements IExchangeRateManager {

    private IExchangeRateDao exchangeRateDao;

    public void setExchangeRateDao(IExchangeRateDao exchangeRateDao) {
        this.exchangeRateDao = exchangeRateDao;
    }

    @Override
    public ExchangeRate getById(Long id) throws InternalErrorException, EntityNotFoundException {
        try {
            return exchangeRateDao.getById(id);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<ExchangeRate> getByParams(Map<String, Object> params) throws InternalErrorException {
        try {
            return exchangeRateDao.getByParams(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

}
