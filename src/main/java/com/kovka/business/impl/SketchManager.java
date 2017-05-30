package com.kovka.business.impl;

import com.kovka.business.ISketchManager;
import com.kovka.common.data.Sketch;
import com.kovka.common.data.SketchInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.dataaccess.dao.IFileDataDao;
import com.kovka.dataaccess.dao.ISketchDao;
import com.kovka.dataaccess.dao.ISketchInfoDao;
import com.kovka.dataaccess.dao.ISketchProductDao;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Transactional(readOnly = true)
public class SketchManager implements ISketchManager {

    private ISketchDao dao;
    private ISketchInfoDao infoDao;
    private ISketchProductDao productDao;
    private IFileDataDao fileDataDao;

    public void setDao(ISketchDao dao) {
        this.dao = dao;
    }

    public void setInfoDao(ISketchInfoDao infoDao) {
        this.infoDao = infoDao;
    }

    public void setProductDao(ISketchProductDao productDao) {
        this.productDao = productDao;
    }

    public void setFileDataDao(IFileDataDao fileDataDao) {
        this.fileDataDao = fileDataDao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void add(Sketch data) throws InternalErrorException {
        try {
            dao.add(data);
            List<SketchInfo> infos = data.getInfos();
            for (SketchInfo info : infos) {
                info.setSketchId(data.getId());
                infoDao.add(info);
            }
        } catch (DatabaseException e) {
            e.printStackTrace();
            throw new InternalErrorException(e);
        }
    }

    @Override
    public Sketch getSampleById(Long id) throws InternalErrorException, EntityNotFoundException {
        try {
            return dao.getSampleById(id);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public Sketch getFullById(Long id) throws InternalErrorException, EntityNotFoundException {
        try {
            return dao.getFullById(id);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public Sketch getFullCurrentLangById(Long id, Language language) throws InternalErrorException, EntityNotFoundException {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", id);
        params.put("language", language);

        try {
            return dao.getFullCurrentLangById(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public Sketch getPreview(Long id, Language language) throws InternalErrorException {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", id);
        params.put("language", language);
        try {
            return dao.getPreview(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public Long getFirstId() throws InternalErrorException {
        try {
            return dao.getFirstId();
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public Sketch getNext(Long id, Language language) throws InternalErrorException {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", id);
        params.put("language", language);
        try {
            return dao.getNext(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<Sketch> getSampleByParams(Map<String, Object> params) throws InternalErrorException {
        try {
            return dao.getSampleByParams(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<Sketch> getNameImages(Map<String, Object> params) throws InternalErrorException {
        try {
            return dao.getNameImages(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public long getCountByParams(Map<String, Object> params) throws InternalErrorException {
        try {
            return dao.getCountByParams(params);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void update(Sketch data) throws InternalErrorException, EntityNotFoundException {
        try {
            List<SketchInfo> infosForEdit = data.getInfos();
            for (SketchInfo info : infosForEdit) {
                infoDao.update(info);
            }
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void sort(List<Long> ides) throws InternalErrorException, EntityNotFoundException {
        try {
            int order = 1;
            for (Long id : ides) {
                Sketch data = dao.getSampleById(id);
                data.setId(id);
                data.setOrder(order);
                order++;
                dao.update(data);
            }

        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void markImageDefault(Sketch data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void delete(Sketch data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.delete(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
