package com.kovka.dataaccess.dao.impl;

import com.kovka.common.data.AboutInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.dataaccess.dao.IAboutInfoDao;
import com.kovka.dataaccess.mapper.namespace.AboutInfoMap;

import java.util.List;

/**
 * Created by Serozh on 6/21/2016.
 */
public class AboutInfoDao implements IAboutInfoDao {

    private AboutInfoMap map;

    public void setMap(AboutInfoMap map) {
        this.map = map;
    }

    @Override
    public void add(AboutInfo data) throws DatabaseException {
        try {
            map.add(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public AboutInfo getBy(Long aboutId) throws DatabaseException {
        try {
            return map.getByAboutId(aboutId);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public List<AboutInfo> getBy(Language language) throws DatabaseException {
        try {
            return map.getByLanguage(language);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }

    @Override
    public void update(AboutInfo data) throws DatabaseException {
        try {
            map.update(data);
        } catch (RuntimeException e) {
            throw new DatabaseException(e);
        }
    }
}
