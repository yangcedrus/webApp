package com.web.administer.servlet;

import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 管理员修改用户信息
 */
@WebServlet("/admin_modify_customer")
public class AdministerModifyCustomerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String name=req.getParameter("Name");
        String psw=req.getParameter("Password");

        AdministerDao dao=new AdministerDaoImpl();
        int flag=dao.modifyCustomer(name,psw);

        req.getSession().setAttribute("modify_result",flag);
        req.getRequestDispatcher("admin_user_management.jsp").forward(req,resp);
    }
}
