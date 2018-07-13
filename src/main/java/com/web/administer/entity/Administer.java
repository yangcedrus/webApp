package com.web.administer.entity;

/**
 * 管理员实体类
 */
public class Administer {
    private Integer admiid;    //管理员ID
    private String name;    //管理员用户名
    private String psw;     //管理员密码

    public Integer getAdmiid() {
        return admiid;
    }

    public void setAdmiid(Integer admiid) {
        this.admiid = admiid;
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
}
