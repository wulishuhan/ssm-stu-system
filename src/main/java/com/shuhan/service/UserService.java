package com.shuhan.service;

import com.shuhan.domain.User;

import java.util.List;

public interface UserService {
    int addUser(User user);
    List<User> findUsers(User user);
    List<User> queryUsers();
}
