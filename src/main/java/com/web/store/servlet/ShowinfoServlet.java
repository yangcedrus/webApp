package com.web.store.servlet;

import com.web.store.dao.StoreDao;
import com.web.store.dao.StoreDaoImpl;
import com.web.store.entity.Store;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/show_item_info")
public class ShowinfoServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        Store store;
        //获取login.jsp页面提交的账号的密码
        String name = req.getParameter("name");
        //引入数据交互层
        StoreDao dao = new StoreDaoImpl();
        store = dao.show_info(name);
        if (store != null) {
            req.getSession().setAttribute("store", store);
            req.getSession().setAttribute("type","store");
        } else {
            req.getSession().setAttribute("store", "null");
        }
        req.getRequestDispatcher("/set_my_info.jsp").forward(req,resp);
    }

}

