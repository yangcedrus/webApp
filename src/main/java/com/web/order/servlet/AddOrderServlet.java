package com.web.order.servlet;

import com.web.order.dao.OrderDao;
import com.web.order.dao.OrderDaoImpl;

/**
 * 生成订单，买家和卖家信息存储
 */
public class AddOrderServlet {
    public static void addOrder(Integer itemid,String name){
        OrderDao dao=new OrderDaoImpl();
        dao.addOrder(name,itemid);
    }
}
