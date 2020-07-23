package com.shuhan.service.impl;

import com.shuhan.dao.UserDao;
import com.shuhan.domain.Student;
import com.shuhan.domain.User;
import com.shuhan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service(value = "UserService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public int addUser(User user) {
        return userDao.insertUser(user);
    }

    @Override
    public List<User> findUsers(User user) {
        return userDao.selectUsers(user);
    }

    @Override
    public List<User> queryUsers() {
        return userDao.queryUsers();
    }
}
