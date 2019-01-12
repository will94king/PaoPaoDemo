package com.gz.pao.pao.web.admin.mapper;

import com.gz.pao.pao.web.admin.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface UserMapper {

    User getInfoById (Integer id);

    User getByLoginId(User params);

    void edit(User user);

    List<User> page(Map<String,Object> params);
    /**
     * 查询总笔数
     * @param user
     * @return
     */
    int count(User user);

    void editpassword(User user);

    void save(User user);
}
