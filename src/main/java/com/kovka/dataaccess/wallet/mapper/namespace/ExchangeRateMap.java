package com.kovka.dataaccess.wallet.mapper.namespace;

import com.kovka.common.data.wallet.ExchangeRate;

import java.util.List;
import java.util.Map;

public interface ExchangeRateMap {

    public ExchangeRate getById(Long id);

    public List<ExchangeRate> getByParams(Map<String, Object> params);

}
