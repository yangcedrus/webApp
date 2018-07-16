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
        Administer administer=new Administer();
        AdministerDao dao= new AdministerDaoImpl();
        List<Item> items=null;
        items=dao.show_items();
        System.out.println(items.size());
        if(items.size()>0&&items!=null){
            req.getSession().setAttribute("items",items);
        }else {
            req.getSession().setAttribute("items","没有待审核商品");
        }
        req.getRequestDispatcher("admin_delete_item.jsp").forward(req,resp);
    }
}
