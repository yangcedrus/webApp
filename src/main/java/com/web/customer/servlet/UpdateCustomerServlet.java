package com.web.customer.servlet;

import com.web.address.dao.AddressDao;
import com.web.address.dao.AddressDaoImpl;
import com.web.address.entity.Address;
import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;
import com.web.customer.dao.CustomerDao;
import com.web.customer.dao.CustomerDaoImpl;
import com.web.customer.entity.Customer;
import com.web.order.servlet.AddOrderServlet;
import com.web.store.entity.Store;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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

        AdministerDao dao=new AdministerDaoImpl();
        Customer customer=dao.searchCustomer(name);
        Store store=dao.searchStore(name);

        if(customer!=null&&customer.getCustomerid()!=null){
            CustomerDao dao1=new CustomerDaoImpl();
            dao1.updateInfo(name,phone,psw);
            req.getRequestDispatcher("customer_me.jsp?name="+name).forward(req,resp);
        }else{
            if (store!=null&&store.getStoreid()!=null){
                req.getRequestDispatcher("store_me.jsp?name="+name).forward(req,resp);
            }
        }
    }
}
