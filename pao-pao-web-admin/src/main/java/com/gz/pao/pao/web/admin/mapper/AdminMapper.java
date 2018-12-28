package com.gz.pao.pao.web.admin.mapper;

import com.gz.pao.pao.web.admin.entity.Admin;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminMapper {

    Admin getInfoByName(Admin params);

    void delete(Integer id);

    void callback(Integer id);
}
