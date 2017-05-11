package com.kovka.business;

import com.kovka.common.data.WorkSchemeInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;

public interface IWorkSchemeInfoManager {

    public void add(WorkSchemeInfo data) throws InternalErrorException;

    public void add(List<WorkSchemeInfo> data) throws InternalErrorException;

    public List<WorkSchemeInfo> getAll() throws InternalErrorException;

    public List<WorkSchemeInfo> getBy(Language language) throws InternalErrorException;

    public void update(WorkSchemeInfo data) throws InternalErrorException, EntityNotFoundException;

    public void delete(long id) throws InternalErrorException, EntityNotFoundException;
}