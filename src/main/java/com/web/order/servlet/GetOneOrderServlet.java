package com.web.order.servlet;

import com.web.order.dao.OrderDao;
import com.web.order.dao.OrderDaoImpl;
import com.web.order.entity.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 获取一个订单实体
 */
@WebServlet("/one_order_detail")
public class GetOneOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Integer id=Integer.parseInt(req.getParameter("orderid"));

        OrderDao dao=new OrderDaoImpl();
        Order order=dao.getOneOrder(id);

        req.getSession().setAttribute("order",order);
        req.getRequestDispatcher("order_details.jsp").forward(req,resp);
    }
}
