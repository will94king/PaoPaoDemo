package com.gz.pao.pao.web.admin.mapper;

import com.gz.pao.pao.web.admin.entity.User;
import org.springframework.stereotype.Repository;

/**
 * 注册
 */
@Repository
public interface RegisterMapper {
    /**
     * 新增
     * @param user
     */
    void insert(User user);
}
