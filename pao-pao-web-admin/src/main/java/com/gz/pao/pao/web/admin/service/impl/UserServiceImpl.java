package com.gz.pao.pao.web.admin.service.impl;


import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.mapper.UserMapper;
import com.gz.pao.pao.web.admin.service.UserService;
import com.gz.pao.pao.web.admin.utils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    //根据ID获取用户信息
    @Override
    public User getInfoById(Integer id) {
        return userMapper.getInfoById(id);
    }

    //添加新的用户
    @Override
    public void save(User user) {

        userMapper.save(user);
    }

    //编辑当前用户
    @Override
    public User edit(User user) {
        User params = userMapper.getInfoById(user.getId());

        BeanUtils.copyPropertiesIgnoreNull(user,params);
        userMapper.edit(params);
        return params;
    }

    @Override
    public void editpassword(User user) {
        System.out.println(user);
        userMapper.editpassword(user);
    }


}


