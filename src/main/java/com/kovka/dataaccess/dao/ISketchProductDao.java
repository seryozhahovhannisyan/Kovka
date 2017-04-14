package com.kovka.dataaccess.dao;

import com.kovka.common.data.SketchProduct;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

public interface ISketchProductDao {

    public void add(SketchProduct data) throws DatabaseException;

    public void update(SketchProduct data) throws DatabaseException, EntityNotFoundException;

    public void delete(SketchProduct data) throws DatabaseException, EntityNotFoundException;

}