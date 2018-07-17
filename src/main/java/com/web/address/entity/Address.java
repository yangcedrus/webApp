package com.web.address.entity;

import java.util.List;

public class Address {
    private Integer addressid;    //地址ID
    private Integer customerid;       //买家id
    private String address;   //买家地址集合

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public String getAddress() { return address; }

    public void setAddress(String address) {
        this.address = address;
    }
}
