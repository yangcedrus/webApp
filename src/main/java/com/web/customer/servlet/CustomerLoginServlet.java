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
 * 买家登录servlet
 */
@WebServlet("/customer_login")
public class CustomerLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        Customer customer;
        //获取数据
        String name=req.getParameter("Name");
        String psw=req.getParameter("Password");
        String role=req.getParameter("login_type");

        //引入数据交互层
        CustomerDao dao=new CustomerDaoImpl();
        customer=dao.login(name,psw);

        if(customer!=null){
            req.getSession().setAttribute("info",customer.getName());
            req.getSession().setAttribute("login_type","customer");
        }else{
            req.getSession().setAttribute("info","登录失败");
        }
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
