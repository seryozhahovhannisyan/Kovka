package com.kovka.dataaccess.dao.impl;

import com.kovka.common.data.About;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.dao.IAboutDao;
import com.kovka.dataaccess.mapper.namespace.AboutMap;

import java.util.List;

/**
 * Created by Serozh on 6/21/2016.
 */
public class AboutDao implements IAboutDao {

    private AboutMap map;

    public void setMap(AboutMap map) {
        this.map = map;
    }

    @Override
    public void add(About data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public About getById(Long id) throws DatabaseException, EntityNotFoundException {
        try {
            return map.getById(id);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<About> getAll(Language language) throws DatabaseException {
        try {
            return map.getAll(language);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(About data) throws DatabaseException, EntityNotFoundException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

}
