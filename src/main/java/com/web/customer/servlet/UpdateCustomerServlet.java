package com.web.customer.servlet;

import com.web.customer.dao.CustomerDao;
import com.web.customer.dao.CustomerDaoImpl;
import com.web.customer.entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 更新个人信息
 */
@WebServlet("/update_customer")
public class UpdateCustomerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String name=req.getParameter("User");
        String phone=req.getParameter("Phone");
        String psw=req.getParameter("Password");
        String role=req.getParameter("sex");

        CustomerDao dao=new CustomerDaoImpl();
        dao.updateInfo(name,phone,psw);

        req.getRequestDispatcher("customer_me.jsp?name="+name).forward(req,resp);
    }
}
