package com.hj.servlet;

import com.hj.entity.User;
import com.hj.service.UserService;
import com.hj.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Author: hj
 * Date: 2019-04-28 14:02
 * Description: 页面提交
 */
public class SubmitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        //resp.setContentType("text/html; charset = UTF-8");
        System.out.println("SubmitServlet");
        //接收页面的值
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        //将信息存入数据库
        User user = new User();
        user.setUsername(name);
        user.setPhone(phone);
        user.setAddress(address);
        UserService userService = new UserServiceImpl();
        userService.insertUser(user);
        //向页面传值
        req.setAttribute("name", name);
        req.setAttribute("phone", phone);
        req.setAttribute("address", address);
        //页面跳转
        req.getRequestDispatcher("submit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
