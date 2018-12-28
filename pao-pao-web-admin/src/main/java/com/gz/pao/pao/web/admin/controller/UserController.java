package com.gz.pao.pao.web.admin.controller;

import com.gz.pao.pao.web.admin.entity.User;
import com.gz.pao.pao.web.admin.service.SearchService;
import com.gz.pao.pao.web.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SearchService searchService;

    //跳转到用户个人空间
    @GetMapping (value = "/info" )
    public String info(Integer id, Model model,HttpServletRequest request){
        User user = userService.getInfoById(id);
        model.addAttribute("user",user);
        String city = user.getCity();
        String sex = user.getSex();
        String sex2 = sex;
        if (sex.equals("男")){
            sex2 = "女";
        }

        List<User> users = searchService.searchList(sex2, city);
        System.out.println(users);

        model.addAttribute("users",users);
        return "info";
    }

    //跳转到用户个人信息编辑
    @GetMapping(value = "/uedit")
    public String edit(){
        return "uedit";
    }

    //跳转到密码修改
    @GetMapping(value = "/password")
    public String password(){
        return "/password";
    }

    //跳转到公司简介
    @GetMapping(value = "/intro")
    public String intro(){
        return "intro";
    }

    //跳转到注册成功页面
    @GetMapping(value = "/regisok")
    public String regisok(){
        return "regisok";
    }

    //跳转到其他人的空间页面
    @GetMapping(value = "/other/info")
    public String otherinfo(Integer id,Model model){
        User user = userService.getInfoById(id);
        model.addAttribute(user);
        return "/other/info";
    }

    //此处为注册功能
    @PostMapping(value = "/save")
    public String register(User user){
            userService.save(user);
    return "/regisok";
    }

    //此处为用户编辑功能
    @PostMapping(value = "/edit")
    public String edit(User user,HttpServletRequest req){
        User edit = userService.edit(user);
        req.getSession().setAttribute("user",edit);
        return "/info";
    }

    //此处为用户修改密码功能
    @PostMapping(value ="editpassword")
    public String editpassword(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        String editpassword = request.getParameter("newpassword");
        user.setPassword(editpassword);
        userService.editpassword(user);
        return "/info";
    }
}
