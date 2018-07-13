package com.web.order.entity;

/**
 * 订单实体类
 */
public class Order {
    private Integer orderid;   //订单id
    private String ordernumber;   //订单号
    private Integer customerid;   //买家ID
    private Integer itemid;    //商品ID
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

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
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
