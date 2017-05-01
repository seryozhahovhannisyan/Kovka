package com.kovka.business.impl;

import com.kovka.business.IAboutManager;
import com.kovka.common.data.About;
import com.kovka.common.data.AboutInfo;
import com.kovka.common.data.lcp.Language;
import com.kovka.common.exception.DatabaseException;
import com.kovka.common.exception.EntityNotFoundException;
import com.kovka.common.exception.InternalErrorException;
import com.kovka.common.util.Utils;
import com.kovka.dataaccess.dao.IAboutDao;
import com.kovka.dataaccess.dao.IAboutInfoDao;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;


@Transactional(readOnly = true)
public class AboutManager implements IAboutManager {

    private IAboutDao dao;
    private IAboutInfoDao infoDao;
    public void setDao(IAboutDao dao) {
        this.dao = dao;
    }

    public void setInfoDao(IAboutInfoDao infoDao) {
        this.infoDao = infoDao;
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void add(About data) throws InternalErrorException {
        try {
            dao.add(data);
            List<AboutInfo> infos = data.getInfos();
            for(AboutInfo info : infos){
                info.setAboutId(data.getId());
                infoDao.add(info);
            }
        } catch (DatabaseException e) {e.printStackTrace();
            throw new InternalErrorException(e);
        }
    }

    @Override
    public About getById(Long id) throws InternalErrorException, EntityNotFoundException {
        try {
            return dao.getById(id);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public About getByLang(Language language) throws InternalErrorException, EntityNotFoundException {
        try {
            List<About> abouts = dao.getAll(Language.getDefault());
            if (Utils.isEmpty(abouts)) {
                throw new EntityNotFoundException("Could not found about by lang, language="+language);
            }
            return abouts.get(0);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    public List<About> getAll(Language language) throws InternalErrorException {
        try {
            return dao.getAll(language);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }

    @Override
    @Transactional(readOnly = false, rollbackFor = Exception.class)
    public void update(About data) throws InternalErrorException, EntityNotFoundException {
        try {
            dao.update(data);
        } catch (DatabaseException e) {
            throw new InternalErrorException(e);
        }
    }
}
