package com.gz.pao.pao.web.admin.service;

import com.gz.pao.pao.web.admin.entity.User;

import java.util.List;

public interface SearchService {
    List<User> searchList(String sex, String city);
}
