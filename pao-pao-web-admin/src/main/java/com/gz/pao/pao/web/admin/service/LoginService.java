package com.gz.pao.pao.web.admin.service;

import com.gz.pao.pao.web.admin.entity.User;

public interface LoginService {
    User login(String loginId, String loginPwd);
}
