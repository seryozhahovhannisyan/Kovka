package com.kovka.dataaccess.mapper.namespace;

import com.kovka.common.data.User;

import java.util.List;
import java.util.Map;

public interface UserMap {

    public void add(User data);

    public User login(Map<String, Object> params);

}
