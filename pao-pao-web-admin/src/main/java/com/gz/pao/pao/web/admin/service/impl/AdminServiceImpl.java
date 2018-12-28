package com.gz.pao.pao.web.admin.service.impl;

import com.gz.pao.pao.web.admin.entity.Admin;
import com.gz.pao.pao.web.admin.mapper.AdminMapper;
import com.gz.pao.pao.web.admin.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin login(String adloginName, String adloginPwd) {
        Admin params = new Admin();
        params.setAdminName(adloginName);

        Admin admin = adminMapper.getInfoByName(params);
        if(admin!=null){
            if(adloginPwd.equals(admin.getAdminPassword())){
                return admin;
            }
        }
        return null;
    }

    @Override
    public void delete(Integer id) {
        adminMapper.delete(id);
    }

    @Override
    public void callback(Integer id) {
        adminMapper.callback(id);
    }
}
