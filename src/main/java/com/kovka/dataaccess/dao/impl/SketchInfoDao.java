package com.kovka.dataaccess.dao.impl;

import com.kovka.common.data.SketchInfo;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.dao.ISketchInfoDao;
import com.kovka.dataaccess.mapper.namespace.SketchInfoMap;

/**
 * Created by Serozh on 6/21/2016.
 */
public class SketchInfoDao implements ISketchInfoDao {

    private SketchInfoMap map;

    public void setMap(SketchInfoMap map) {
        this.map = map;
    }

    @Override
    public void add(SketchInfo data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(SketchInfo data) throws DatabaseException, EntityNotFoundException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }
}
