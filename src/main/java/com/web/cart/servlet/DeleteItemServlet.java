package com.web.cart.servlet;

import com.web.cart.dao.CartDao;
import com.web.cart.dao.CartDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 购物车删除商品
 */
@WebServlet("/cart_delete_item")
public class DeleteItemServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        Integer itemid=Integer.parseInt(req.getParameter("itemid"));
        String name=req.getParameter("info");

        CartDao dao=new CartDaoImpl();
        int result =dao.deleteItemsFromCart(itemid,name);
    }
}
