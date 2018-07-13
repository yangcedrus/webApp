package com.web.order.dao;

import com.web.order.entity.Order;

import java.util.Date;
import java.util.List;

public interface OrderDao {
    /**
     * 订单操作接口
     */
    public boolean addOrder(String ordernum, int customerid, int itemid, int num);
    public List<Order> showOrder(int customerid);
    public boolean changeState(int orderid,String state);
}
