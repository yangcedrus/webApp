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
 * 添加商品到购物车
 */
@WebServlet("/item_add_to_cart")
public class AddItemServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        Integer itemid=Integer.parseInt(req.getParameter("itemid"));
        Integer num=Integer.parseInt(req.getParameter("num"));
        String name=req.getParameter("info");

        CartDao dao=new CartDaoImpl();
        int result =dao.addItemsToCart(itemid,name,num);
    }
}
