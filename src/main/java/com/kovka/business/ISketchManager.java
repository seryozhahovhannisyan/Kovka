package com.kovka.business;

import com.kovka.common.data.Sketch;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;
import java.util.Map;

public interface ISketchManager {

    public void add(Sketch data) throws InternalErrorException;

    public Sketch getById(Long id) throws InternalErrorException, EntityNotFoundException;

    public List<Sketch> getByParams(Map<String, Object> params) throws InternalErrorException;

    public List<Sketch> getFullByParams(Map<String, Object> params) throws InternalErrorException;

    public int getCountByParams(Map<String, Object> params) throws InternalErrorException;

    public void update(Sketch data) throws InternalErrorException, EntityNotFoundException;

    public void delete(Sketch data) throws InternalErrorException, EntityNotFoundException;

    public void forceDelete(Long id) throws InternalErrorException, EntityNotFoundException;

}