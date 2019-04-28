package com.hj.service.impl;

import com.hj.dao.UserDao;
import com.hj.entity.User;
import com.hj.service.UserService;

/**
 * Author: hj
 * Date: 2019-04-28 16:32
 * Description: <描述>
 */
public class UserServiceImpl implements UserService {

    @Override
    public void insertUser(User user) {
        UserDao userDao = new UserDao();
        userDao.insertUser(user);
    }
}
