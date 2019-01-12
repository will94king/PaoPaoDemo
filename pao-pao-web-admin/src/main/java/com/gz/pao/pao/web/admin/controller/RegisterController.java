package com.gz.pao.pao.web.admin.controller;

import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.service.RegisterService;
import com.gz.pao.pao.web.admin.service.impl.RegisterServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

    @Autowired
    private RegisterService registerService;

    /**
     * 注册
     * @param user
     * @return
     */
    @PostMapping(value = "/add")
    public String register(User user){
       registerService.register(user);
        return "/login";
    }
}
