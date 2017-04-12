package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.Sketch;

import java.util.List;
import java.util.Map;

public interface SketchMap {

    public void add(Sketch data);

    public Sketch getById(Long id);

    public Long getPreview(int id);

    public Long getNext(int id);

    public List<Sketch> getByParams(Map<String, Object> params);

    public int getCountByParams(Map<String, Object> params);

    public void update(Sketch data);

    public void delete(Sketch data);

}
