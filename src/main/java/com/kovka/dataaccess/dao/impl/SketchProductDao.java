package com.kovka.dataaccess.dao.impl;

import com.kovka.common.data.SketchProduct;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.dao.ISketchProductDao;
import com.kovka.dataaccess.mapper.namespace.SketchProductMap;

import java.util.List;

/**
 * Created by Serozh on 6/21/2016.
 */
public class SketchProductDao implements ISketchProductDao {

    private SketchProductMap map;

    public void setMap(SketchProductMap map) {
        this.map = map;
    }

    @Override
    public void add(SketchProduct data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<SketchProduct> getBySketchId(Long sketchId) throws DatabaseException {
        try {
            return map.getBySketchId(sketchId);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(SketchProduct data) throws DatabaseException, EntityNotFoundException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void delete(SketchProduct data) throws DatabaseException, EntityNotFoundException {
        try {
            map.delete(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
