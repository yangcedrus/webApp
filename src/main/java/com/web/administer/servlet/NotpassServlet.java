package com.web.administer.servlet;

import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;
import com.web.administer.entity.Administer;
import com.web.item.entity.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/not_pass")
public class NotpassServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        req.setCharacterEncoding("UTF-8");
        Administer administer=new Administer();
        AdministerDao dao= new AdministerDaoImpl();
        Integer itemid=Integer.parseInt(req.getParameter("itemid")) ;
        String reason=req.getParameter("reason");
        System.out.println(itemid);
        boolean res=dao.nopass(itemid,reason);
        if(res==true){
//            resp.setContentType("text/html;charset=utf-8");
//            PrintWriter out=resp.getWriter();
//            out.print("<script language='javascript'>alert('提交成功');</script>");
            List<Item> item=dao.show_items();
            req.getSession().setAttribute("items",item);

            req.getRequestDispatcher("admin_items_management.jsp").forward(req,resp);
        }else{
            //req.getSession().setAttribute("info","fail");
        }

    }
}
