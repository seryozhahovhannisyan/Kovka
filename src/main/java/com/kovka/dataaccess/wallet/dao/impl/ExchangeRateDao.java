package com.kovka.dataaccess.wallet.dao.impl;

import com.kovka.common.data.wallet.ExchangeRate;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.wallet.dao.IExchangeRateDao;
import com.kovka.dataaccess.wallet.mapper.namespace.ExchangeRateMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 7/8/2016.
 */
public class ExchangeRateDao implements IExchangeRateDao {

    private ExchangeRateMap map;

    public void setMap(ExchangeRateMap map) {
        this.map = map;
    }

    @Override
    public ExchangeRate getById(Long id) throws DatabaseException, EntityNotFoundException {
        try {
            ExchangeRate data = map.getById(id);
            if (data == null) {
                throw new EntityNotFoundException(String.format("Could not found ExchangeRate id=[%d]",id));
            }
            return data;
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<ExchangeRate> getByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }
}
