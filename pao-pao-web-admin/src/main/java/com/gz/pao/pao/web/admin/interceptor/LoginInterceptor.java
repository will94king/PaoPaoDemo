package com.gz.pao.pao.web.admin.interceptor;

import com.gz.pao.pao.web.admin.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {

        boolean flag = false;

        User user = (User) request.getSession().getAttribute("user");
        //尚未登陆
        if(user == null || "".equals(user)){
            response.sendRedirect("/login");
        }
        //已登陆
        else{
            //跳转页面
//            response.sendRedirect("/main");
            flag = true;

        }
        return flag;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

    }
}