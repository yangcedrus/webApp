package com.web.order.entity;

import com.web.customer.entity.Customer;
import com.web.item.entity.Item;

/**
 * 订单实体类
 */
public class Order {
    private Integer orderid;   //订单id
    private String ordernumber;   //订单号
    private Customer customer;   //买家
    private Item item;    //商品
    private Integer num;       //购买数量
    private String startt;  //订单开始时间
    private String endt;    //订单截至时间
    private Integer state; //订单状态0 未付款 1 未发货 2 未收货 3已完成
    private Double total; //订单总价格

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) { this.orderid = orderid; }

    public String getOrdernumber() {
        return ordernumber;
    }

    public void setOrdernumber(String ordernumber) {
        this.ordernumber = ordernumber;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getStartt() {
        return startt;
    }

    public void setStartt(String startt) {
        this.startt = startt;
    }

    public String getEndt() {
        return endt;
    }

    public void setEndt(String endt) {
        this.endt = endt;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }
}
