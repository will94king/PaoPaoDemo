package com.gz.pao.pao.web.admin.service.impl;

import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.mapper.UserMapper;
import com.gz.pao.pao.web.admin.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(String loginId, String loginPwd) {

        User params = new User();
        params.setUsername(loginId);
        params.setPhone(loginId);
        params.setEmail(loginId);

        User user = userMapper.getByLoginId(params);
        if(user != null){
            if(loginPwd.equals(user.getPassword())){
                return user;
            }
        }

        return null;

    }
}
