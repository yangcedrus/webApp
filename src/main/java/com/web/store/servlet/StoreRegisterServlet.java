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

/**
 * 卖家注册服务
 */
@WebServlet("/store_register")
public class StoreRegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        //获取用户填写的信息
        String name=req.getParameter("Username");
        String sex=req.getParameter("sex");
        String phone=req.getParameter("Phone");
        String psw=req.getParameter("Password");
        String confirm=req.getParameter("Confirm Password");

        if(!psw.equals(confirm)){
            req.getSession().setAttribute("info","请确认两次输入密码是否一致");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
        }
        //组装卖家实体
        Store store=new Store();
        store.setName(name);
        store.setPsw(psw);
        store.setSex(sex.equals("male")?0:1);
        store.setPhone(phone);
        store.setState(1);

        //调用DAO层
        StoreDao dao=new StoreDaoImpl();
        int flag=dao.register(store);
        if(flag==0){
            req.getSession().setAttribute("info","注册失败,数据库异常");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
        }else{
            req.getSession().setAttribute("info","注册成功");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }
}
