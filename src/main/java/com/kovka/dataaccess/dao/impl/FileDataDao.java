package com.kovka.dataaccess.dao.impl;

import com.kovka.common.data.FileData;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.dao.IFileDataDao;
import com.kovka.dataaccess.mapper.namespace.FileDataMap;

import java.util.List;
import java.util.Map;

/**
 * Created by Serozh on 6/21/2016.
 */
public class FileDataDao implements IFileDataDao {

    private FileDataMap map;

    public void setMap(FileDataMap map) {
        this.map = map;
    }

    @Override
    public void add(FileData data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public FileData getById(Long id) throws DatabaseException, EntityNotFoundException {
        try {
            FileData data = map.getById(id);
            if (data == null) {
                throw new EntityNotFoundException(String.format("Could not found FileData id=[%d]", id));
            }
            return data;
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<FileData> getBySketchId(Long sketchId) throws DatabaseException {
        return map.getBySketchId(sketchId);
    }

    @Override
    public List<FileData> getMachineData() throws DatabaseException {
        return map.getMachineData();
    }

    @Override
    public List<FileData> getByParams(Map<String, Object> params) throws DatabaseException {
        try {
            return map.getByParams(params);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(FileData data) throws DatabaseException, EntityNotFoundException {
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
