package com.gz.pao.pao.web.admin.service;

import com.gz.pao.pao.web.admin.entity.PageInfo;
import com.gz.pao.pao.web.admin.entity.User;

import java.util.List;

public interface PageService {

    PageInfo<User> page(User user, int start, int length);

    int count(User user);
}
