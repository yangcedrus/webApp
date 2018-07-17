package com.web.store.servlet;

import com.web.item.entity.Item;
import com.web.store.dao.StoreDao;
import com.web.store.dao.StoreDaoImpl;
import com.web.store.entity.Store;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/store_item")
public class StoreitemServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        List<Item> itemList ;
        String name = req.getParameter("info");
        //引入数据交互层
        StoreDao dao = new StoreDaoImpl();
        itemList = dao.store_item(name);
        if (itemList != null) {
            req.getSession().setAttribute("list", itemList);
            req.getSession().setAttribute("store_name",name);
        } else {
            req.getSession().setAttribute("list", "没有商品");
        }
        req.getRequestDispatcher("/store_my_items.jsp").forward(req,resp);
    }

}
