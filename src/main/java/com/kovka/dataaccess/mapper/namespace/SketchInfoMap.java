package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.SketchInfo;

public interface SketchInfoMap {

    public void add(SketchInfo data);

    public SketchInfo getBySketchId(Long sketchId);

    public void update(SketchInfo data);

}
