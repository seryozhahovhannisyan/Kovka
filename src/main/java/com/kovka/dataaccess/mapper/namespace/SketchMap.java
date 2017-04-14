package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.Sketch;

import java.util.List;
import java.util.Map;

public interface SketchMap {

    public void add(Sketch data);

    public Sketch getSampleById(Long id);

    public Sketch getFullById(Long id);

    public Sketch getFullCurrentLangById(Long id);

    public Long getPreview(Long id);

    public Long getNext(Long id);

    public List<Sketch> getSampleByParams(Map<String, Object> params);

    public long getCountByParams(Map<String, Object> params);

    public void update(Sketch data);

    public void delete(Sketch data);

}
