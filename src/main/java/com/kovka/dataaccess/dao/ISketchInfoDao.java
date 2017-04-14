package com.kovka.dataaccess.dao;

import com.kovka.common.data.SketchInfo;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

public interface ISketchInfoDao {

    public void add(SketchInfo data) throws DatabaseException;

    public void update(SketchInfo data) throws DatabaseException, EntityNotFoundException;

}