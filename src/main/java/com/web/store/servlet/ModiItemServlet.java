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

@WebServlet("/modi_item")
public class ModiItemServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        //获取login.jsp页面提交的账号的密码
        int itemid=Integer.parseInt(req.getParameter("itemid"));
        System.out.println(itemid);
        String name = req.getParameter("name");
        System.out.println(name);
        Double price=Double.parseDouble(req.getParameter("price"));
        int num=Integer.parseInt(req.getParameter("stock"));
        String desc=req.getParameter("desc");
        //引入数据交互层
        StoreDao dao = new StoreDaoImpl();
        boolean res = dao.modi_item(itemid,name,desc,price,num);
        if (res) {
            req.getSession().setAttribute("modi", "true");
            String storename=dao.getstorename(itemid);
            List<Item> items=new ArrayList<Item>();
            items=dao.store_item(storename);
            req.getSession().setAttribute("list",items);
            req.getSession().setAttribute("type","store");
        } else {
            req.getSession().setAttribute("modi", "false");
        }
        StoreDao dao1 = new StoreDaoImpl();
        List<Item> itemList ;
        itemList = dao1.store_item(name);
        if (itemList != null) {
            req.getSession().setAttribute("list", itemList);
            req.getSession().setAttribute("store_name",name);
        } else {
            req.getSession().setAttribute("list", "没有商品");
        }
        req.getRequestDispatcher("/store_item_management.jsp").forward(req,resp);

    }

}
