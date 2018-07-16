package com.web.store.servlet;

import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;
import com.web.administer.entity.Administer;
import com.web.item.dao.ItemDao;
import com.web.item.dao.ItemDaoImpl;
import com.web.item.entity.Item;
import com.web.store.dao.StoreDao;
import com.web.store.dao.StoreDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/modi_item_info")
public class ShowModiItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        Item item=new Item();
        //获取login.jsp页面提交的账号的密码
        int itemid = Integer.parseInt(req.getParameter("itemid"));
        //引入数据交互层
        System.out.println(itemid);
        AdministerDao dao = new AdministerDaoImpl();
        item = dao.show_item(itemid);
        if (item != null) {
            req.getSession().setAttribute("item", item);
            //req.getSession().setAttribute("type","store");
        } else {
            req.getSession().setAttribute("item", "null");
        }
        req.getRequestDispatcher("/store_modi_item.jsp").forward(req,resp);
    }

}
