package com.gz.pao.pao.web.admin.controller;

import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.service.SearchService;
import com.gz.pao.pao.web.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ShowController {


    @Autowired
    private SearchService searchService;

    //跳转到主页
    @GetMapping(value = "show")
    public String show(String sex, String city, Model model){

        List<User> list = searchService.searchList(sex,city);

        model.addAttribute("list",list);
        return "show";
    }
}
