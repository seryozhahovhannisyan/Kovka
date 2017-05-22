package com.kovka.business;

import com.kovka.common.data.SketchProduct;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;

public interface ISketchProductManager {

    public void add(SketchProduct data) throws InternalErrorException;

    public List<SketchProduct> getBySketchId(Long sketchId) throws InternalErrorException;

    public void update(SketchProduct data) throws InternalErrorException, EntityNotFoundException;

    public void sort(List<Long> ides) throws InternalErrorException, EntityNotFoundException;

    public void delete(SketchProduct data) throws InternalErrorException, EntityNotFoundException;


}