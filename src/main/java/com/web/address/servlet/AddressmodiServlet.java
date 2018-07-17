package com.web.address.servlet;

import com.web.address.dao.AddressDao;
import com.web.address.dao.AddressDaoImpl;
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

@WebServlet("/address_modi")
public class AddressmodiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String address=req.getParameter("address");
        int id=0;
        boolean res;
        AddressDao dao = new AddressDaoImpl();

        id=Integer.parseInt(req.getParameter("id2"));
        res=dao.ModiAddress(id,address);

        AdministerDao dao1=new AdministerDaoImpl();
        String str=req.getParameter("id1");
        int customerid=0;
        if(str!=null&&!str.equals(""))
            customerid=Integer.parseInt(str);
        String name="";
        if(res){
            req.getSession().setAttribute("address_add", "true");
            System.out.println(res);
            name=dao1.searchCustomer(customerid).getName();
        }
        else {
            req.getSession().setAttribute("address_add", "false");
        }
        req.getRequestDispatcher("get_my_info?info="+name).forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
