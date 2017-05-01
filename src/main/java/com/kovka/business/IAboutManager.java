package com.kovka.business;

import com.kovka.common.data.About;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;

public interface IAboutManager {

    public void add(About data) throws InternalErrorException;

    public About getById(Long id) throws InternalErrorException, EntityNotFoundException;

    public About getByLang(Language language) throws InternalErrorException, EntityNotFoundException;

    public List<About> getAll(Language language) throws InternalErrorException;

    public void update(About data) throws InternalErrorException, EntityNotFoundException;
}