package com.web.store.servlet;

import com.web.item.dao.ItemDao;
import com.web.item.dao.ItemDaoImpl;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/item_manage")
public class ManageItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        List<Item> items=new ArrayList<Item>();
        //获取login.jsp页面提交的账号的密码
        String name = req.getParameter("name");
        //引入数据交互层
        StoreDao dao = new StoreDaoImpl();
        items = dao.store_item(name);
        if (items != null) {
            req.getSession().setAttribute("store", items);
            req.getSession().setAttribute("store_name",name);
            //req.getSession().setAttribute("type","store");
        } else {
            req.getSession().setAttribute("store", "null");
        }
        req.getRequestDispatcher("/store_item_management.jsp").forward(req,resp);

    }

}


