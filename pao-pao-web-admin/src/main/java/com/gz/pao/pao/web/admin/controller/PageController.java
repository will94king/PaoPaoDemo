package com.gz.pao.pao.web.admin.controller;

import com.gz.pao.pao.web.admin.entity.DataTable;
import com.gz.pao.pao.web.admin.entity.PageInfo;
import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.service.PageService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PageController {
    @Autowired
    private PageService pageService;

    @ResponseBody
    @PostMapping(value = "page")
    public DataTable<User> page(User user, HttpServletRequest request) {
        DataTable<User> dataTable = new DataTable<>();

        String strDraw = request.getParameter("draw");
        String strStart = request.getParameter("start");
        String strLength = request.getParameter("length");

        String iDisplayStart = request.getParameter("iDisplayStart");
        System.out.println(iDisplayStart);

        int draw = StringUtils.isBlank(strDraw) ? 1 : Integer.parseInt(strDraw);
        int start = StringUtils.isBlank(strStart) ? 0 : Integer.parseInt(strStart);
        int length = StringUtils.isBlank(strLength) ? 10 : Integer.parseInt(strLength);

        PageInfo<User> pageInfo = pageService.page(user, start, length);
        dataTable.setDraw(draw);
        dataTable.setRecordsTotal(pageInfo.getTotal());
        dataTable.setRecordsFiltered(pageInfo.getTotal());
        dataTable.setData(pageInfo.getData());

        return dataTable;
    }
}
