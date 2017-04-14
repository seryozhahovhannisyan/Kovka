package com.kovka.dataaccess.dao;

import com.kovka.common.data.Sketch;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface ISketchDao {

    public void add(Sketch data) throws DatabaseException;

    public Sketch getSampleById(Long id) throws DatabaseException, EntityNotFoundException;

    public Sketch getFullById(Long id) throws DatabaseException, EntityNotFoundException;

    public Sketch getFullCurrentLangById(Long id) throws DatabaseException, EntityNotFoundException;

    public Long getPreview(Long id) throws DatabaseException;

    public Long getNext(Long id) throws DatabaseException;

    public List<Sketch> getSampleByParams(Map<String, Object> params) throws DatabaseException;

    public long getCountByParams(Map<String, Object> params) throws DatabaseException;

    public void update(Sketch data) throws DatabaseException, EntityNotFoundException;

    public void delete(Sketch data) throws DatabaseException, EntityNotFoundException;

}