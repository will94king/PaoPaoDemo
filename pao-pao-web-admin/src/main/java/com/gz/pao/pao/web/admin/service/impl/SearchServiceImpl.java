package com.gz.pao.pao.web.admin.service.impl;


import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.mapper.SearchMapper;
import com.gz.pao.pao.web.admin.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchServiceImpl implements SearchService {
    @Autowired
    private SearchMapper searchMapper;

    @Override
    public List<User> searchList(String sex,String city) {
        User user = new User();
        user.setCity(city);
        user.setSex(sex);
        List<User> list = searchMapper.searchList(user);
        return list;
    }


}
