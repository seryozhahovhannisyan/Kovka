package com.kovka.dataaccess.dao.impl;

import com.kovka.common.data.WorkSchemeInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.dao.IWorkSchemeInfoDao;
import com.kovka.dataaccess.mapper.namespace.WorkSchemeInfoMap;

import java.util.List;

/**
 * Created by Serozh on 6/21/2016.
 */
public class WorkSchemeInfoDao implements IWorkSchemeInfoDao {

    private WorkSchemeInfoMap map;

    public void setMap(WorkSchemeInfoMap map) {
        this.map = map;
    }

    @Override
    public void add(WorkSchemeInfo data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<WorkSchemeInfo> getAll() throws DatabaseException {
        try {
            return map.getAll();
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<WorkSchemeInfo> getBy(Language language) throws DatabaseException {
        try {
            return map.getByLanguage(language);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(WorkSchemeInfo data) throws DatabaseException, EntityNotFoundException {
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
