package com.web.administer.servlet;

import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;
import com.web.administer.entity.Administer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 管理员登录servlet
 */
@WebServlet("/administer_login")
public class AdministerLoginServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        super.doGet(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.setCharacterEncoding("UTF-8");
        Administer administer;
        //获取数据
        String name=req.getParameter("Name");
        String psw=req.getParameter("Password");
        String role=req.getParameter("login_type");

        //引入数据交互层
        AdministerDao dao=new AdministerDaoImpl();
        administer=dao.login(name,psw);

        if(administer!=null){
            req.getSession().setAttribute("info",administer.getName());
            req.getSession().setAttribute("login_type","admin");

        }else{
            req.getSession().setAttribute("info","登录失败");
        }
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
