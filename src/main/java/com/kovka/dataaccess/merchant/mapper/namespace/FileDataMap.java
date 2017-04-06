package com.kovka.dataaccess.merchant.mapper.namespace;

import com.kovka.common.data.merchant.FileData;

import java.util.List;
import java.util.Map;

public interface FileDataMap {

    public void add(FileData data);

    public FileData getById(Long id);

    public List<FileData> getByParams(Map<String, Object> params);

    public void update(FileData data);

    public void delete(FileData data);

    public void forceDelete(Long id);

}
