package com.gz.pao.pao.web.admin.service;

import com.gz.pao.pao.web.admin.entity.User;

public interface UserService {
    User getInfoById(Integer id);

    void save(User user);

    User edit(User user);

    void editpassword(User user);
}