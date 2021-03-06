package com.web.store.servlet;

import com.web.item.entity.Item;
import com.web.store.dao.StoreDao;
import com.web.store.dao.StoreDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/item_getdown")
public class ItemGetdownServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        //获取login.jsp页面提交的账号的密码
        int itemid = Integer.parseInt(req.getParameter("itemid"));
        System.out.println(itemid);
        //引入数据交互层
        StoreDao dao = new StoreDaoImpl();
        boolean res = dao.getdown(itemid);
        System.out.println(res);
        if (res) {
            req.getSession().setAttribute("getdown", "true");
            List<Item> items=null;
            String store=dao.getstorename(itemid);
            items=dao.store_item(store);
            req.getSession().setAttribute("list",items);
            req.getSession().setAttribute("type","store");
        } else {
            req.getSession().setAttribute("getdown", "false");
        }
        req.getRequestDispatcher("/store_item_management.jsp").forward(req,resp);

    }

}

