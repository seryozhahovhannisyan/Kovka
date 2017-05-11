package com.kovka.dataaccess.dao;

import com.kovka.common.data.PriceListInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;

public interface IPriceListInfoDao {

    public void add(PriceListInfo data) throws DatabaseException;

    public List<PriceListInfo> getAll() throws DatabaseException;

    public List<PriceListInfo> getBy(Language language) throws DatabaseException;

    public void update(PriceListInfo data) throws DatabaseException, EntityNotFoundException;

    public void delete(long id) throws DatabaseException, EntityNotFoundException;

}