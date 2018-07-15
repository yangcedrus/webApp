package com.web.administer.servlet;

import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;
import com.web.customer.entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 管理员查找所有买家
 */
@WebServlet("/admin_search_customers")
public class AdministerSearchAllCustomerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> customers;

        AdministerDao dao=new AdministerDaoImpl();
        customers=dao.searchAllCustomer();

        req.getSession().setAttribute("customer_list",customers);
        req.getRequestDispatcher("admin_user_management.jsp").forward(req,resp);
    }
}
