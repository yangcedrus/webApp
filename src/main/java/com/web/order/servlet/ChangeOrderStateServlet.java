package com.web.order.servlet;

import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;
import com.web.customer.entity.Customer;
import com.web.order.dao.OrderDao;
import com.web.order.dao.OrderDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 改变订单状态
 */
@WebServlet("/change_order_state")
public class ChangeOrderStateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String name=req.getParameter("info");
        Integer id = Integer.parseInt(req.getParameter("orderid"));
        Integer state = Integer.parseInt(req.getParameter("state"));

        OrderDao dao = new OrderDaoImpl();
        boolean flag = dao.changeState(id,state);


        req.getSession().setAttribute("state_result",flag);

        AdministerDao dao2=new AdministerDaoImpl();
        Customer customer=dao2.searchCustomer(name);
        if(customer!=null)
            req.getRequestDispatcher("customer_me.jsp?info="+name).forward(req,resp);
        else
            req.getRequestDispatcher("store_me.jsp?info="+name).forward(req,resp);
    }
}
