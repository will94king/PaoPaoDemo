package com.gz.pao.pao.web.admin.service.impl;

import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.mapper.RegisterMapper;
import com.gz.pao.pao.web.admin.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 注册实现
 */
@Service
public class RegisterServiceImpl implements RegisterService {
    @Autowired
    private RegisterMapper registerMapper;

    @Override
    public void register(User user) {
        //新增注册
        if (preInsert(user)){
            registerMapper.insert(user);
        }
    }

    public boolean preInsert(User user){
        //新增
        if (user.getId() == null){
            return true;
        }
        return false;
    }
}
