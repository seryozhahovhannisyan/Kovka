package com.kovka.dataaccess.dao;

import com.kovka.common.data.FileData;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface IFileDataDao {

    public void add(FileData data) throws DatabaseException;

    public FileData getById(Long id) throws DatabaseException, EntityNotFoundException;

    public List<FileData> getBySketchId(Long sketchId) throws DatabaseException;

    public List<FileData> getByParams(Map<String, Object> params) throws DatabaseException;

    public void update(FileData data) throws DatabaseException, EntityNotFoundException;

    public void delete(FileData data) throws DatabaseException, EntityNotFoundException;

}