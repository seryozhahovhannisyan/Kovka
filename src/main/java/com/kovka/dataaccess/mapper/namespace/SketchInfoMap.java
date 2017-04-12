package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.SketchInfo;

import java.util.List;
import java.util.Map;

public interface SketchInfoMap {

    public void add(SketchInfo data);

    public SketchInfo getById(Long id);

    public List<SketchInfo> getByParams(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public void update(SketchInfo data);

    public void delete(SketchInfo data);

}
