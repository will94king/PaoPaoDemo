package com.gz.pao.pao.web.admin.controller;

import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.service.impl.RegisterServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "register")
public class RegisterController {

    @Autowired
    RegisterServiceImpl registerServiceImpl;

    /**
     * 注册
     * @param user
     * @return
     */
    @PostMapping(value = "regi")
    public String register(User user){
       registerServiceImpl.register(user);
        return "redirect:/login";
    }
}
