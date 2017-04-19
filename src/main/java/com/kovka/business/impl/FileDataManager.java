package com.kovka.business.impl;

import com.kovka.business.IFileDataManager;
import com.kovka.common.data.FileData;
import com.kovka.common.data.Sketch;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.dao.IFileDataDao;
import com.kovka.dataaccess.dao.ISketchDao;
import com.kovka.web.util.FileDataUtil;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.List;
import java.util.Map;


@Transactional(readOnly = true)
public class FileDataManager implements IFileDataManager {

    private IFileDataDao dao;
    private ISketchDao sketchDao;

    public void setDao(IFileDataDao dao) {
        this.dao = dao;
    }

    public void setSketchDao(ISketchDao sketchDao) {
        this.sketchDao = sketchDao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void add(FileData data) throws InternalErrorException {

        try {
            dao.add(data);
            Sketch sketch = sketchDao.getSampleById(data.getSketchId());
            if(sketch.getMainImage() == null){
                sketch.setMainImageId(data.getId());
                sketchDao.update(sketch);
            }

            String fileName = data.getFileName();
            String extension = fileName.substring(fileName.indexOf("."));
            //
            fileName = String.format(FileDataUtil.LOGO_FORMAT, FileDataUtil.LOGO_PREFIX_SKETCH, data.getId(), extension);
            data.setFileName(fileName);

            dao.update(data);

            FileDataUtil.createFileSketch(fileName,  data.getData());
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        } catch (IOException e) {
            throw new InternalErrorException(e);
        } catch (EntityNotFoundException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public FileData getById(Long id) throws InternalErrorException, EntityNotFoundException {
        try {
            return dao.getById(id);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<FileData> getBySketchId(Long sketchId) throws InternalErrorException {
        try {
            return dao.getBySketchId(sketchId);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<FileData> getByParams(Map<String, Object> params) throws InternalErrorException {
        try {
            return dao.getByParams(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void update(FileData data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void delete(FileData data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.delete(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
