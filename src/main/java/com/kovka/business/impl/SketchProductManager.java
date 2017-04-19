package com.kovka.business.impl;

import com.kovka.business.ISketchProductManager;
import com.kovka.common.data.FileData;
import com.kovka.common.data.SketchProduct;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.dao.IFileDataDao;
import com.kovka.dataaccess.dao.ISketchProductDao;
import com.kovka.web.util.FileDataUtil;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.List;


@Transactional(readOnly = true)
public class SketchProductManager implements ISketchProductManager {

    private ISketchProductDao dao;

    private IFileDataDao fileDataDao;

    public void setDao(ISketchProductDao dao) {
        this.dao = dao;
    }

    public void setFileDataDao(IFileDataDao fileDataDao) {
        this.fileDataDao = fileDataDao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void add(SketchProduct data) throws InternalErrorException {

        FileData fileData = data.getImage();

        try {

            fileDataDao.add(fileData);


            String fileName = fileData.getFileName();
            String extension = fileName.substring(fileName.indexOf("."));
            //
            fileName = String.format(FileDataUtil.LOGO_FORMAT, FileDataUtil.LOGO_PREFIX_PRODUCT, fileData.getId(), extension);
            fileData.setFileName(fileName);
            data.setImageId(fileData.getId());
            dao.add(data);

            fileDataDao.update(fileData);


            FileDataUtil.createFileProduct(fileName,  fileData.getData());
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        } catch (IOException e) {
            throw new InternalErrorException(e);
        } catch (EntityNotFoundException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<SketchProduct> getBySketchId(Long sketchId) throws InternalErrorException {
        try {
            return dao.getBySketchId(sketchId);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void update(SketchProduct data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void delete(SketchProduct data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
