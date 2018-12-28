package com.gz.pao.pao.web.admin.entity;
import lombok.Data;

import java.util.List;
@Data
public class DataTable<User> {
    private int draw;
    private int recordsTotal;
    private int recordsFiltered;
    private List<User> data;
}