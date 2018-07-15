package com.web.user.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 注册服务层
 */
@WebServlet("/user_register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        //获取数据
        String role=req.getParameter("register_type");

        switch (role){
            case "customer":req.getRequestDispatcher("/customer_register").forward(req, resp);break;
            case "store":req.getRequestDispatcher("/store_register").forward(req, resp);break;
            default:break;
        }
    }
}
