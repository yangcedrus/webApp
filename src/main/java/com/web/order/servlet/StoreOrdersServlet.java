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
import java.util.List;

/**
 * 商店订单
 */
@WebServlet("/store_orders_list")
public class StoreOrdersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String username = req.getParameter("info");

        OrderDao dao = new OrderDaoImpl();
        List<Order> orders = dao.showStoreOrder(username);

        req.getSession().setAttribute("info", username);
        req.getSession().setAttribute("store_list_orders", orders);
        req.getRequestDispatcher("store_orders.jsp").forward(req, resp);
    }
}
