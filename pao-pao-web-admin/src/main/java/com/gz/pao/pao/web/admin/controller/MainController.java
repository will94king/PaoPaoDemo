package com.gz.pao.pao.web.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    //跳转到主页
    @GetMapping(value = {"/main","/"})
    public String main(){
        return "main";
    }
}
