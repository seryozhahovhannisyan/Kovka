package com.kovka.dataaccess.dao;

import com.kovka.common.data.AboutInfo;
import com.kovka.common.data.User;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;

import java.util.List;
import java.util.Map;

public interface IAboutInfoDao {

    public void add(AboutInfo data)throws DatabaseException;

    public AboutInfo getBy(Long aboutId)throws DatabaseException;

    public List<AboutInfo> getBy(Language language)throws DatabaseException;

    public void update(AboutInfo data)throws DatabaseException;

}