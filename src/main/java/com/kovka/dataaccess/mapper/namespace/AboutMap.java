package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.About;
import com.kovka.common.data.lcp.Language;

public interface AboutMap {

    public void add(About data);

    public About getById(Long id);

    public About getFullCurrentLangById(Language id);

    public void update(About data);

}
