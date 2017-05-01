package com.kovka.dataaccess.dao;

import com.kovka.common.data.About;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface IAboutDao {

    public void add(About data)throws DatabaseException;

    public About getById(Long id)throws DatabaseException, EntityNotFoundException;

    public List<About> getAll(Language language) throws DatabaseException;

    public void update(About data)throws DatabaseException, EntityNotFoundException;

}