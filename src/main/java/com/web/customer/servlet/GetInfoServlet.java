package com.web.customer.servlet;

import com.web.address.dao.AddressDao;
import com.web.address.dao.AddressDaoImpl;
import com.web.address.entity.Address;
import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;
import com.web.customer.entity.Customer;
import com.web.store.entity.Store;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 获取个人信息
 */
@WebServlet("/get_my_info")
public class GetInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("info");

        AdministerDao dao=new AdministerDaoImpl();
        Customer customer=dao.searchCustomer(name);
        Store store=dao.searchStore(name);
        if(customer!=null&&customer.getCustomerid()!=null){
            AddressDao addressDao=new AddressDaoImpl();
            List<Address> addresslist=addressDao.GetAddress(customer.getCustomerid());
            req.getSession().setAttribute("customer_info",customer);
            req.getSession().setAttribute("address",addresslist);
        }else{
            if (store!=null&&store.getStoreid()!=null)
                req.getSession().setAttribute("store_info",store);
        }
        req.getRequestDispatcher("set_my_info.jsp").forward(req,resp);
    }
}
