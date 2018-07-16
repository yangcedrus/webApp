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

/**
 * 获取一个商品信息
 */
@WebServlet("/one_item_details")
public class GetOneItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=(String)req.getParameter("info");
        String id=(String)req.getParameter("itemid");
        Integer itemid=Integer.parseInt(id);

        ItemDao dao=new ItemDaoImpl();
        Item item=dao.getOneItem(itemid);

        req.getSession().setAttribute("one_item_info",item);
        req.getRequestDispatcher("item_details.jsp?info="+name).forward(req,resp);
    }
}
