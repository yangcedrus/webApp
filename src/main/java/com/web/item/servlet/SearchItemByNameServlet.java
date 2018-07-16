package com.web.item.servlet;

import com.web.item.dao.ItemDao;
import com.web.item.dao.ItemDaoImpl;
import com.web.item.entity.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 名称模糊查找商品
 */
@WebServlet("/search_name_items")
public class SearchItemByNameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String username=(String)req.getSession().getAttribute("info");
        String type=(String)req.getSession().getAttribute("type");
        String itemname=req.getParameter("Search");

        ItemDao dao=new ItemDaoImpl();
        List<Item> items=dao.serachItemByName(itemname);

        req.getSession().setAttribute("items",items);
        req.getSession().setAttribute("type",type);
        req.getSession().setAttribute("info",username);
        req.getRequestDispatcher("search.jsp").forward(req,resp);
    }
}
