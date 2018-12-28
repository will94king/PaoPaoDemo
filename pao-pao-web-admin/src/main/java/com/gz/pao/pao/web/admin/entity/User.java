package com.gz.pao.pao.web.admin.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class User implements Serializable {

    private Integer id;
    private String username;
    private String password;
    private String sex;
    private Integer age;
    private Integer height;
    private String city;
    private String phone;
    private String email;
    private String userDesc;
    private String headPic;
    private String pic;
    private Boolean status;


}
