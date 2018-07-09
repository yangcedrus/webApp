package com.web.store.entity;

/**
 * 商店实体类
 */
public class Store {
    private Long storeid;   //卖家ID
    private String login_name;  //卖家用户名
    private String psw;     //卖家密码
    private Long collectnum;    //店铺收藏数
    private Long itemnum;   //店铺商品数
    private String phone;   //商家电话
    private String info;    //商家描述
    private String address; //商家地址

    public Long getStoreid() {
        return storeid;
    }

    public void setStoreid(Long storeid) {
        this.storeid = storeid;
    }

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }

    public Long getCollectnum() {
        return collectnum;
    }

    public void setCollectnum(Long collectnum) {
        this.collectnum = collectnum;
    }

    public Long getItemnum() {
        return itemnum;
    }

    public void setItemnum(Long itemnum) {
        this.itemnum = itemnum;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
