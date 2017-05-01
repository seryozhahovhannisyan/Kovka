package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.About;
import com.kovka.common.data.lcp.Language;

import java.util.List;

public interface AboutMap {

    public void add(About data);

    public About getById(Long id);

    public List<About> getAll(Language language);

    public void update(About data);

}
