package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.SketchProduct;

import java.util.List;

public interface SketchProductMap {

    public void add(SketchProduct data);

    public SketchProduct getById(Long sketchId);

    public List<SketchProduct> getBySketchId(Long sketchId);

    public void update(SketchProduct data);

    public void delete(SketchProduct data);

}
