package com.web.customer.entity;

/**
 * 顾客的实体类
 */
public class Customer {
    private Integer customerid;    //买家ID
    private String name;    //用户名
    private String psw;     //买家密码
    private Integer sex;       //买家性别
    private String phone;   //买家手机号
    private Integer state;  //买家状态默认1，删除后为0,账号无效

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
