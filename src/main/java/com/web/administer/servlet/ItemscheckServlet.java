package com.web.administer.servlet;

import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;
import com.web.administer.entity.Administer;
import com.web.item.entity.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/items_check")
public class ItemscheckServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.setCharacterEncoding("UTF-8");
        Administer administer=new Administer();
        AdministerDao dao= new AdministerDaoImpl();
        int itemid=Integer.parseInt(req.getParameter("itemid"));
        System.out.println(itemid);
        Item item=dao.show_item(itemid);
        if(item!=null) {
            req.getSession().setAttribute("info","true");
            req.getSession().setAttribute("id", item.getItemid());
            req.getSession().setAttribute("name",item.getName());
            System.out.println(item.getName());
            req.getSession().setAttribute("price",item.getPrice());
            req.getSession().setAttribute("stock",item.getStock());
            req.getSession().setAttribute("desc",item.getDescription());
            req.getSession().setAttribute("storeid",item.getStoreid());
            req.getSession().setAttribute("img",item.getImagePath());
        }else{
            req.getSession().setAttribute("info","没有信息");
        }
        req.getRequestDispatcher("item_details_check.jsp").forward(req,resp);
    }
}
