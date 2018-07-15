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

/**
 * 管理员修改用户信息
 */
@WebServlet("/admin_customer_info")
public class AdministerReturnCustomerInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer customerid=Integer.parseInt(req.getParameter("id"));

        AdministerDao dao=new AdministerDaoImpl();
        Customer customer=dao.searchCustomer(customerid);

        if(customer!=null){
            req.getSession().setAttribute("customer_info",customer);
        }else{
            req.getSession().setAttribute("customer_info",null);
        }
        req.getRequestDispatcher("admin_modi_user.jsp").forward(req,resp);
    }
}
