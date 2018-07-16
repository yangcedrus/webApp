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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/check_items")
public class ShowitemServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.setCharacterEncoding("UTF-8");
        List<Item> items;

        String name=req.getParameter("info");
        AdministerDao dao= new AdministerDaoImpl();
        items=dao.show_items();

        req.getSession().setAttribute("admin_items",items);
        req.getRequestDispatcher("admin_items_management.jsp?info="+name).forward(req,resp);
    }
}
