package com.gz.pao.pao.web.admin.controller;

import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    //跳转至登录页
    @GetMapping(value ="/login")
    public String login(){
        return "login";
    }

    //跳转到注册页
    @GetMapping(value = "/register")
    public String register(){
        return "register";
    }

    //此处为登录功能（可用用户名、手机、邮箱进行登录）
    @PostMapping(value = "/login")
    public String login(String loginId, String loginPwd, HttpServletRequest req, Model model){

        User user = loginService.login(loginId,loginPwd);
        //登陆成功
        if(user !=null){
            //将数据放入缓存中
            req.getSession().setAttribute("user",user);
            return "redirect:main";
        }
        //登陆失败
        else{
            model.addAttribute("message","用户名或密码错误,请重新输入");
            return "login";
        }
    }

    //此处为登出功能
    @GetMapping(value = "/logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "/login";
    }
}
