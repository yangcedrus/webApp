package com.web.cart.servlet;

import com.web.cart.dao.CartDao;
import com.web.cart.dao.CartDaoImpl;
import com.web.cart.entity.Cart;
import com.web.item.dao.ItemDao;
import com.web.item.dao.ItemDaoImpl;
import com.web.item.entity.Item;
import com.web.order.servlet.AddOrderServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
@WebServlet("/checkout_items")
public class CartCheckoutServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String itemstr=req.getParameter("items");
        String name=req.getParameter("info");

        String items[]=itemstr.split(",");

        CartDao dao=new CartDaoImpl();
        for(int i=0;i<items.length;i++){
            if(items[i]!=null&&items[i].length()>0){
                int itemid=Integer.parseInt(items[i]);
                AddOrderServlet.addOrder(itemid,name);
                int result =dao.deleteItemsFromCart(itemid,name);
            }
        }
    }
}
