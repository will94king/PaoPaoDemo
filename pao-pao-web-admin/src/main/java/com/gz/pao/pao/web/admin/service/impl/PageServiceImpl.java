package com.gz.pao.pao.web.admin.service.impl;

import com.google.common.collect.Maps;
import com.gz.pao.pao.web.admin.entity.PageInfo;
import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.mapper.UserMapper;
import com.gz.pao.pao.web.admin.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class PageServiceImpl implements PageService {
    @Autowired
    private UserMapper userMapper;
    /**
     * 查询全部实例
     * @return
     */

    @Override
    public PageInfo<User> page(User user, int start, int length) {
        Map<String, Object> params = Maps.newHashMap();
        params.put("user",user);
        params.put("start",start);
        params.put("length",length);

        List<User> data = userMapper.page(params);
        int total = count(user);

        PageInfo<User> pageInfo = new PageInfo<>();
        pageInfo.setData(data);
        pageInfo.setTotal(total);
        return pageInfo;
    }

    @Override
    public int count(User user) {
        return userMapper.count(user);
    }
}
