package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.SketchProduct;

import java.util.List;
import java.util.Map;

public interface SketchProductMap {

    public void add(SketchProduct data);

    public SketchProduct getById(Long id);

    public List<SketchProduct> getByParams(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public void update(SketchProduct data);

    public void delete(SketchProduct data);

}
