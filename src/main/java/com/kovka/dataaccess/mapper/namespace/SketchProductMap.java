package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.SketchProduct;

public interface SketchProductMap {

    public void add(SketchProduct data);

    public SketchProduct getBySketchId(Long sketchId);

    public void update(SketchProduct data);

    public void delete(SketchProduct data);

}
