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
import java.util.List;

/**
 * 管理员删除用户
 */
@WebServlet("/admin_delete_customer")
public class AdministerDeleteCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        Integer id=Integer.parseInt(req.getParameter("id"));

        AdministerDao dao=new AdministerDaoImpl();
        dao.deleteCustomer(id);

        List<Customer> customers;
        customers=dao.searchAllCustomer();

        req.getSession().setAttribute("customer_list",customers);
        req.getRequestDispatcher("admin_user_management.jsp").forward(req,resp);
    }
}
