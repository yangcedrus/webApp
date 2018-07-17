package com.web.address.servlet;

import com.web.address.dao.AddressDao;
import com.web.address.dao.AddressDaoImpl;
import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/dele_address")
public class AddressDeleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int addressid=Integer.parseInt(req.getParameter("id1"));
        boolean res;
        AddressDao dao = new AddressDaoImpl();
        res=dao.DeleAddress(addressid);
        AdministerDao dao1=new AdministerDaoImpl();
        int customerid=Integer.parseInt(req.getParameter("id2"));
        String name="";
        if(res){
            req.getSession().setAttribute("address_check", "true");
            System.out.println(res);
            name=dao1.searchCustomer(customerid).getName();
        }
        else {
            req.getSession().setAttribute("address_check", "false");
        }
        req.getRequestDispatcher("get_my_info?info="+name).forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
