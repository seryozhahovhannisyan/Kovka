package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.WorkSchemeInfo;
import com.kovka.common.data.lcp.Language;

import java.util.List;

public interface WorkSchemeInfoMap {

    public void add(WorkSchemeInfo data);

    public List<WorkSchemeInfo> getAll();

    public List<WorkSchemeInfo> getByLanguage(Language language);

    public List<WorkSchemeInfo> getById(Long id);

    public void update(WorkSchemeInfo data);

    public void delete(long id);

}
