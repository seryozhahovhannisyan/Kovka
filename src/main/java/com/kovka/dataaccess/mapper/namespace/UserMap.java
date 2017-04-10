package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.User;

import java.util.List;
import java.util.Map;

public interface UserMap {

    public void add(User data);

    public User getById(Long id);

    public User login(Map<String, Object> params);

    public List<User> getByParams(Map<String, Object> params);

    public void update(User data);

    public void delete(User data);

    public void forceDelete(Long id);

}
