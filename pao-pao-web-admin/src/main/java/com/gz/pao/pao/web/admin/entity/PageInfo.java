package com.gz.pao.pao.web.admin.entity;

import lombok.Data;

import java.util.List;

/**
 * 分页信息
 * <p>Title: PageInfo</p>
 * <p>Description: </p>
 *
 * @author Lusifer
 * @version 1.0.0
 * @date 2018/12/6 16:02
 */
@Data
public class PageInfo<User> {
    private int total;
    private List<User> data;

}
