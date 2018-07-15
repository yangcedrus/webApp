package com.web.customer.servlet;

import com.web.customer.dao.CustomerDao;
import com.web.customer.dao.CustomerDaoImpl;
import com.web.customer.entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 买家注册服务
 */
@WebServlet("/customer_register")
public class CustomerRegisterServlet extends HttpServlet {
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
        //组装买家实体
        Customer customer=new Customer();
        customer.setName(name);
        customer.setPsw(psw);
        customer.setSex(sex.equals("male")?0:1);
        customer.setPhone(phone);
        customer.setState(1);

        //调用DAO层
        CustomerDao dao=new CustomerDaoImpl();
        int flag=dao.register(customer);
        if(flag==0){
            req.getSession().setAttribute("info","注册失败,数据库异常");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
        }else{
            req.getSession().setAttribute("info","注册成功");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }
}
