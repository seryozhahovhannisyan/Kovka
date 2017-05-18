package com.kovka.dataaccess.dao;

import com.kovka.common.data.Sketch;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface ISketchDao {

    public void add(Sketch data) throws DatabaseException;

    public Sketch getSampleById(Long id) throws DatabaseException, EntityNotFoundException;

    public Sketch getFullById(Long id) throws DatabaseException, EntityNotFoundException;

    public Sketch getFullCurrentLangById(Map<String, Object> params) throws DatabaseException, EntityNotFoundException;

    public Long getFirstId()  throws DatabaseException;

    public Sketch getPreview(Map<String, Object> params) throws DatabaseException;

    public Sketch getNext(Map<String, Object> params) throws DatabaseException;

    public List<Sketch> getSampleByParams(Map<String, Object> params) throws DatabaseException;

    public List<Sketch> getNameImages(Language language) throws DatabaseException;

    public long getCountByParams(Map<String, Object> params) throws DatabaseException;

    public void update(Sketch data) throws DatabaseException, EntityNotFoundException;

    public void delete(Sketch data) throws DatabaseException, EntityNotFoundException;

}