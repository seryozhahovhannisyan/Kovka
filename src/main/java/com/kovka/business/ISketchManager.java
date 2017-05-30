package com.kovka.business;

import com.kovka.common.data.Sketch;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;
import java.util.Map;

public interface ISketchManager {

    public void add(Sketch data) throws InternalErrorException;

    public Sketch getSampleById(Long id) throws InternalErrorException, EntityNotFoundException;

    public Sketch getFullById(Long id) throws InternalErrorException, EntityNotFoundException;

    public Sketch getFullCurrentLangById(Long id, Language language) throws InternalErrorException, EntityNotFoundException;

    public Long getFirstId() throws InternalErrorException, EntityNotFoundException;

    public Sketch getPreview(Long id, Language language) throws InternalErrorException;

    public Sketch getNext(Long id, Language language) throws InternalErrorException;

    public List<Sketch> getSampleByParams(Map<String, Object> params) throws InternalErrorException;

    public List<Sketch> getNameImages(Map<String, Object> params) throws InternalErrorException;

    public long getCountByParams(Map<String, Object> params) throws InternalErrorException;

    public void update(Sketch data) throws InternalErrorException, EntityNotFoundException;

    public void sort(List<Long> ides) throws InternalErrorException, EntityNotFoundException;

    public void markImageDefault(Sketch data) throws InternalErrorException, EntityNotFoundException;

    public void delete(Sketch data) throws InternalErrorException, EntityNotFoundException;

}