package com.web.order.dao;

import com.web.order.entity.Order;
import org.junit.jupiter.api.Test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class OrderDaoImplTest {
    OrderDaoImpl orderDao;
    @Test
    void addOrder() {
        String ordernum="20180703124678";
        int customerid=Integer.parseInt("100");
        int itemid=Integer.parseInt("12");
        int num=4;
        orderDao=new OrderDaoImpl();
        Order order;
        boolean res=orderDao.addOrder(ordernum,customerid,itemid,num);
        System.out.println(res);
    }

    @Test
    void showOrder() {
        int customerid=100;
        orderDao=new OrderDaoImpl();
        List<Order> orders=null;
        orders=orderDao.showOrder(customerid);
        if(orders!=null) {
            System.out.println(orders.size());
            for (int i = 0; i < orders.size(); i++) {
                if(orders.get(i).getState()>1){
                    System.out.println(orders.get(i));
                }
                else{
                    System.out.println(orders.get(i).getOrderid());
                    System.out.println(orders.get(i).getOrdernumber());
                    System.out.println(orders.get(i).getCustomerid());
                    System.out.println(orders.get(i).getItemid());
                    System.out.println(orders.get(i).getNum());
                    System.out.println(orders.get(i).getTotal());
                    System.out.println(orders.get(i).getStartt());
                    System.out.println(orders.get(i).getState());
                    System.out.println("-------------------");
                }
            }
        }
    }

    @Test
    void changeState() {
        int orderid=10;
        String state="3";
        orderDao=new OrderDaoImpl();
        boolean res=orderDao.changeState(orderid,state);
        System.out.println(res);
    }

}