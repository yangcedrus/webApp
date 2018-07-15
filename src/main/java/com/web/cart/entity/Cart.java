package com.web.cart.entity;

import java.util.HashMap;
import java.util.List;

/**
 * 购物车实体类
 */
public class Cart {


    private Integer cartid;    //购物车ID
    private Integer customerid;    //用户ID
    private Double total; //购物车总价
    private List<String> cartitem;  //c_i表


    public List<String> getCartitem() {
        return cartitem;
    }

    public void setCartitem(List<String> cartitem) {
        this.cartitem = cartitem;
    }

    public Integer getCartid() {
        return cartid;
    }

    public void setCartid(Integer cartid) {
        this.cartid = cartid;
    }

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }
}
