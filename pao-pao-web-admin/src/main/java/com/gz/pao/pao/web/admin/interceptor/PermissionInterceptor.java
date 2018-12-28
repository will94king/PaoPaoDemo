package com.gz.pao.pao.web.admin.interceptor;

import com.gz.pao.pao.web.admin.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PermissionInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null){
            response.sendRedirect("/main");
            return false;
        }
        return true;

    }
}
