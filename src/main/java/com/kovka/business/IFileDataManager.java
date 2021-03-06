package com.kovka.business;

import com.kovka.common.data.FileData;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;

import java.util.List;
import java.util.Map;

public interface IFileDataManager {

    public void add(FileData data) throws InternalErrorException;

    public FileData getById(Long id) throws InternalErrorException, EntityNotFoundException;

    public List<FileData> getBySketchId(Long sketchId) throws InternalErrorException;

    public List<FileData> getMachineData() throws InternalErrorException;

    public List<FileData> getByParams(Map<String, Object> params) throws InternalErrorException;

    public void update(FileData data) throws InternalErrorException, EntityNotFoundException;

    public void sort(List<Long> ides) throws InternalErrorException, EntityNotFoundException;

    public void delete(long id) throws InternalErrorException, EntityNotFoundException;

}