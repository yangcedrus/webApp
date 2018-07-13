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
@WebServlet("/store/storelogin")
public class StoreLoginServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException,IOException {
        this.doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
        throws ServletException,IOException {
        Store store = new Store();
        //获取login.jsp页面提交的账号的密码
        String name = request.getParameter("name");
        String psw = request.getParameter("psw");
        //测试数据
        System.out.println(name + " " + psw);
        //获取login.jsp页面提交的账号和密码设置到实体类Store中
        store.setName(name);
        store.setPsw(psw);

        //引入数据交互层
        StoreDao dao = new StoreDaoImpl();
        Store us = dao.login(name, psw);
        //测试返回的值
        System.out.println(us);
        if (us != null) {
            request.setAttribute("info", "登陆成功");
        } else {
            request.setAttribute("info", "登陆失败");
        }
        request.getRequestDispatcher("/index/info.jsp");

    }

}
