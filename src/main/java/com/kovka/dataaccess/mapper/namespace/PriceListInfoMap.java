package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.PriceListInfo;
import com.kovka.common.data.lcp.Language;

import java.util.List;

public interface PriceListInfoMap {

    public void add(PriceListInfo data);

    public List<PriceListInfo> getAll();

    public List<PriceListInfo> getByLanguage(Language language);

    public void update(PriceListInfo data);

    public void delete(PriceListInfo data);

}
