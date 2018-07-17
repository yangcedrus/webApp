package com.web.cart.servlet;

import com.web.cart.dao.CartDao;
import com.web.cart.dao.CartDaoImpl;
import com.web.cart.entity.Cart;
import com.web.item.dao.ItemDao;
import com.web.item.dao.ItemDaoImpl;
import com.web.item.entity.Item;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

public class CartCheckoutServlet extends HttpServlet{

        public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException,IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        doPost(request,response);
    }
        public void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        //得到编号
        String c = request.getParameter("cartid");
        //通过编号得到购物车对象的所有信息
        Integer cartid=Integer.parseInt(c); //Java parseInt函数 将（）中的String转换为整型返回
        CartDao dao=new CartDaoImpl();
        Cart cart = dao.checkOut(cartid);
        //购物车存在session中
        //从session中取购物车
        Map<String,Item> cart1=(Map<String,Item>)request.getSession().getAttribute("cart");
        if(cart.containsKey(itemid)) {
            //存在，则设置数量-1
            //通过键，获取值 -> 通过Itemid获得item
            //item包括商品对象信息和数量信息
            Item item1 = cart.get(itemid);
            //获取商品原来的数量值
            int preNum = item1.getStock();
            //在原来的数量上+1
            cart.get(itemid).setStock(preNum - 1);
            //cart.get(itemid).setStock(cart.get(itemid).getStock()-1); 两句等同
        }else {
            //不存在，则回复该商品不存在
            System.out.println("该商品不存在");
        }
        //将购物车放入Session
        request.getSession().setAttribute("cart",cart);
        //继续购物
        response.sendRedirect("index.jsp");
    }
}
