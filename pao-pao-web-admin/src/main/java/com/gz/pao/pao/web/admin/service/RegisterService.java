package com.gz.pao.pao.web.admin.service;

import com.gz.pao.pao.web.admin.entity.User;

/**
 * 注册接口定义
 */
public interface RegisterService {
    /**
     * 注册
     * @param user
     */
    void register(User user);
}
