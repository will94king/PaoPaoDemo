package com.gz.pao.pao.web.admin.mapper;

import com.gz.pao.pao.web.admin.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SearchMapper {
    List<User> searchList(User user);
}
