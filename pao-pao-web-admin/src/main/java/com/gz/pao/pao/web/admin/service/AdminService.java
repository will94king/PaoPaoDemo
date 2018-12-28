package com.gz.pao.pao.web.admin.service;

import com.gz.pao.pao.web.admin.entity.Admin;

public interface AdminService {
    Admin login(String adloginName,String adloginPwd);

    void delete(Integer id);

    void callback(Integer id);
}
