package com.web.cart.entity;

/**
 * 购物车实体类
 */
public class Cart {
    private Long cartid;    //购物车ID
    private Long customerid;    //用户ID
    private Double total; //购物车总价

    public Long getCartid() {
        return cartid;
    }

    public void setCartid(Long cartid) {
        this.cartid = cartid;
    }

    public Long getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Long customerid) {
        this.customerid = customerid;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }
}
