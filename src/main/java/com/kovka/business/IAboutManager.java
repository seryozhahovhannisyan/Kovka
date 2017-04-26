package com.kovka.business;

import com.kovka.common.data.About;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

public interface IAboutManager {

    public void add(About data)throws InternalErrorException;

    public About getById(Long id)throws InternalErrorException, EntityNotFoundException;

    public About getFullCurrentLangById(Language language)throws InternalErrorException, EntityNotFoundException;

    public void update(About data)throws InternalErrorException, EntityNotFoundException;
}