package com.kovka.business;

import com.kovka.common.data.Sketch;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;
import java.util.Map;

public interface ISketchManager {

    public void add(Sketch data) throws InternalErrorException;

    public Sketch getSampleById(Long id) throws InternalErrorException, EntityNotFoundException;

    public Sketch getFullById(Long id) throws InternalErrorException, EntityNotFoundException;

    public Sketch getFullCurrentLangById(Long id) throws InternalErrorException, EntityNotFoundException;

    public Long getPreview(Long id) throws InternalErrorException;

    public Long getNext(Long id) throws InternalErrorException;

    public List<Sketch> getSampleByParams(Map<String, Object> params) throws InternalErrorException;

    public long getCountByParams(Map<String, Object> params) throws InternalErrorException;

    public void update(Sketch data) throws InternalErrorException, EntityNotFoundException;

    public void delete(Sketch data) throws InternalErrorException, EntityNotFoundException;

}