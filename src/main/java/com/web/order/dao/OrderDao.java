package com.web.order.dao;

import com.web.order.entity.Order;

import java.util.Date;
import java.util.List;

public interface OrderDao {
    /**
     * 订单操作接口
     */
    public boolean addOrder(String customername, int itemid, int num);
    public List<Order> showOrder(String customername);
    public List<Order> showStoreOrder(String storename);
    public boolean changeState(int orderid,int state);
    public Order getOneOrder(Integer orderid);
}
