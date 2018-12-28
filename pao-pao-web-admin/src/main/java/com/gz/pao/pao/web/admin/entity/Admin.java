package com.gz.pao.pao.web.admin.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class Admin implements Serializable {
    private int id;
    private String adminName;
    private String adminPassword;
}
