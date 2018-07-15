package com.web.store.servlet;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

import com.web.store.dao.StoreDao;
import com.web.store.dao.StoreDaoImpl;
import com.web.store.entity.Store;

/**
 *登录servlet
 */
@WebServlet("/store_login")
public class StoreLoginServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        Store store;
        //获取login.jsp页面提交的账号的密码
        String name = req.getParameter("Name");
        String psw = req.getParameter("Password");

        //引入数据交互层
        StoreDao dao = new StoreDaoImpl();
        store = dao.login(name, psw);
        if (store != null) {
            req.getSession().setAttribute("info", store.getName());
        } else {
            req.getSession().setAttribute("info", "登陆失败");
        }
        req.getRequestDispatcher("/index.jsp").forward(req,resp);
    }

}
