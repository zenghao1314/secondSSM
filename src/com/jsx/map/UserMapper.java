package com.jsx.map;

import java.util.List;

import com.jsx.common.Page;
import com.jsx.model.User;

public interface UserMapper {
	public User getUserById(int id);
	public int update(User user);
	public List<User> getAll();
    public int delete(int id);
    public int add(User user);
    public int isAuthorizedUser(User user);
    List<User> getUserListByCondition(User user);
    User getUser(User user);

    public List<User> queryAll(Page<User> page);
    public int queryCount();
    }
