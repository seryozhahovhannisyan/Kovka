package com.kovka.dataaccess.wallet.dao;

import com.kovka.common.data.wallet.ExchangeRate;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface IExchangeRateDao {

    public ExchangeRate getById(Long id) throws DatabaseException, EntityNotFoundException;;

    public List<ExchangeRate> getByParams(Map<String, Object> params) throws DatabaseException;;

}
