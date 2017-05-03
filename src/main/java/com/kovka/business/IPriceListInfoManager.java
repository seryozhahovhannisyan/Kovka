package com.kovka.business;

import com.kovka.common.data.PriceListInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;

public interface IPriceListInfoManager {

    public void add(PriceListInfo data)throws InternalErrorException;

    public void add(List<PriceListInfo> data)throws InternalErrorException;

    public List<PriceListInfo> getAll()throws InternalErrorException;

    public List<PriceListInfo> getBy(Language language)throws InternalErrorException;

    public void update(PriceListInfo data)throws InternalErrorException, EntityNotFoundException;

    public void delete(long id)throws InternalErrorException, EntityNotFoundException;
}