package com.gz.pao.pao.web.admin.controller;

import com.gz.pao.pao.web.admin.entity.Admin;
import com.gz.pao.pao.web.admin.service.AdminService;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

//   跳转至管理员登录页
    @GetMapping(value = "/adminlogin")
    public String adlogin(){

    return "/admin/adlogin";
    }


    // 跳转至后台用户展示页
    @GetMapping(value = "/adlist")
    public String adlist(){

        return "/admin/adlist";
    }

    // 跳转至后台首页
    @GetMapping(value = "/adindex")
    public String adindex(){

        return "/admin/admain";
    }

//    根据前端传输数据来登录
    @PostMapping(value = "/admain")
    public String adlogin(String adloginName, String adloginPwd, HttpServletRequest req, Model model){
        Admin admin = adminService.login(adloginName, adloginPwd);
        if(admin !=null){
            req.getSession().setAttribute("admin",admin);
            return "/admin/admain";
        }
        else{
            model.addAttribute("message","请输入正确的管理员名称与密码");
            return "/admin/adlogin";
        }
    }

//此处为管理员登出功能
    @GetMapping(value = "/logout")
    public  String adlogout(HttpServletRequest request){
        request.getSession().invalidate();
            return "/login";
    }

    //此处为管理员根据用户ID删除用户功能（伪删除）
    @GetMapping(value = "delete")
    public String delete(Integer id){
        adminService.delete(id);
        return "/admin/admain";
    }

    //此处为管理员根据用户ID还原用户功能（伪删除）
    @GetMapping(value = "callback")
    public String callback(Integer id){
        adminService.callback(id);
        return "/admin/admain";
    }
}
