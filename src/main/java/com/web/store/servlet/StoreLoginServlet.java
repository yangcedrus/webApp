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
@WebServlet("/store/store_login")
public class StoreLoginServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
        req.setCharacterEncoding("UTF-8");
        Store store = new Store();
        //获取login.jsp页面提交的账号的密码
        String name = req.getParameter("Name");
        String psw = req.getParameter("Password");

        //获取login.jsp页面提交的账号和密码设置到实体类Store中
        store.setName(name);
        store.setPsw(psw);

        //引入数据交互层
        StoreDao dao = new StoreDaoImpl();
        Store us = dao.login(name, psw);
        //测试返回的值
        System.out.println(us);
        if (us != null) {
            req.setAttribute("info", "登陆成功");
        } else {
            req.setAttribute("info", "登陆失败");
        }
        req.getRequestDispatcher("/index/info.jsp");
    }
    //    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//        throws ServletException,IOException {
//        this.doPost(request, response);
//    }
//    @Override
//    protected void doPost(HttpServletRequest request,HttpServletResponse response)
//        throws ServletException,IOException {
//
//        request.setCharacterEncoding("UTF-8");
//        Store store = new Store();
//        //获取login.jsp页面提交的账号的密码
//        String name = request.getParameter("Name");
//        String psw = request.getParameter("Psw");
//
//        //获取login.jsp页面提交的账号和密码设置到实体类Store中
//        store.setName(name);
//        store.setPsw(psw);
//
//        //引入数据交互层
//        StoreDao dao = new StoreDaoImpl();
//        Store us = dao.login(name, psw);
//        //测试返回的值
//        System.out.println(us);
//        if (us != null) {
//            request.setAttribute("info", "登陆成功");
//        } else {
//            request.setAttribute("info", "登陆失败");
//        }
//        request.getRequestDispatcher("/index/info.jsp");
//
//    }

}
