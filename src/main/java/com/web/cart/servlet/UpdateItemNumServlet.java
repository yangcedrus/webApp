package com.web.cart.servlet;

import com.web.cart.dao.CartDao;
import com.web.cart.dao.CartDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/item_num_update")
public class UpdateItemNumServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        Integer itemid=Integer.parseInt(req.getParameter("itemid"));
        Integer num=Integer.parseInt(req.getParameter("num"));
        String name=req.getParameter("info");

        if(num==0){
            num=1;
        }
        CartDao dao=new CartDaoImpl();
        dao.updateNum(name,itemid,num);
    }
}
