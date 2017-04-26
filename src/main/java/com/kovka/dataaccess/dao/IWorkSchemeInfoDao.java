package com.kovka.dataaccess.dao;

import com.kovka.common.data.WorkSchemeInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;

public interface IWorkSchemeInfoDao {

    public void add(WorkSchemeInfo data)throws DatabaseException;

    public List<WorkSchemeInfo> getAll()throws DatabaseException;

    public List<WorkSchemeInfo> getBy(Language language)throws DatabaseException;

    public void update(WorkSchemeInfo data)throws DatabaseException, EntityNotFoundException;

    public void delete(WorkSchemeInfo data)throws DatabaseException, EntityNotFoundException;

}