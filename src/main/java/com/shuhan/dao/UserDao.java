package com.shuhan.dao;


import com.shuhan.domain.User;

import java.util.List;

public interface UserDao {
    int insertUser(User user);
    List<User> selectUsers(User user);
    List<User> queryUsers();
}
