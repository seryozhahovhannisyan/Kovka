package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.AboutInfo;
import com.kovka.common.data.lcp.Language;

import java.util.List;

public interface AboutInfoMap {

    public void add(AboutInfo data);

    public AboutInfo getByAboutId(Long aboutId);

    public List<AboutInfo> getByLanguage(Language language);

    public void update(AboutInfo data);

}
