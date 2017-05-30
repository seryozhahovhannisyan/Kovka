package com.kovka.dataaccess.dao.impl;

import com.kovka.common.data.Sketch;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.dao.ISketchDao;
import com.kovka.dataaccess.mapper.namespace.SketchMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/21/2016.
 */
public class SketchDao implements ISketchDao {

    private SketchMap map;

    public void setMap(SketchMap map) {
        this.map = map;
    }

    @Override
    public void add(Sketch data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public Sketch getSampleById(Long id) throws DatabaseException, EntityNotFoundException {
        try {
            Sketch data = map.getSampleById(id);
            if (data == null) {
                throw new EntityNotFoundException(String.format("Could not found Sketch id=[%d]", id));
            }
            return data;
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public Sketch getFullById(Long id) throws DatabaseException, EntityNotFoundException {
        try {
            Sketch data = map.getFullById(id);
            if (data == null) {
                throw new EntityNotFoundException(String.format("Could not found Sketch id=[%d]", id));
            }
            return data;
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public Sketch getFullCurrentLangById(Map<String, Object> params) throws DatabaseException, EntityNotFoundException {
        try {
            Sketch data = map.getFullCurrentLangById(params);
            if (data == null) {
                throw new EntityNotFoundException(String.format("Could not found Sketch id=[%d]", params));
            }
            return data;
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public Long getFirstId() throws DatabaseException {
        try {
            return map.getFirstId();
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public Sketch getPreview(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getPreview(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public Sketch getNext(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getNext(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }


    @Override
    public List<Sketch> getSampleByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getSampleByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<Sketch> getNameImages(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getNameImages(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public long getCountByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getCountByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(Sketch data) throws DatabaseException, EntityNotFoundException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void delete(Sketch data) throws DatabaseException, EntityNotFoundException {
        try {
            map.delete(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
