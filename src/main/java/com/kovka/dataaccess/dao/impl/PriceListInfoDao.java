package com.kovka.dataaccess.dao.impl;

import com.kovka.common.data.PriceListInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.dao.IPriceListInfoDao;
import com.kovka.dataaccess.mapper.namespace.PriceListInfoMap;

import java.util.List;

/**
 * Created by Serozh on 6/21/2016.
 */
public class PriceListInfoDao implements IPriceListInfoDao {

    private PriceListInfoMap map;

    public void setMap(PriceListInfoMap map) {
        this.map = map;
    }

    @Override
    public void add(PriceListInfo data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<PriceListInfo> getAll() throws DatabaseException {
        try {
            return map.getAll();
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<PriceListInfo> getBy(Language language) throws DatabaseException {
        try {
            return map.getByLanguage(language);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(PriceListInfo data) throws DatabaseException, EntityNotFoundException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void delete(long id) throws DatabaseException, EntityNotFoundException {
        try {
            map.delete(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
