package com.web.login.dao;

/**
 * 登录数据层
 */
public interface LoginDao {
    /**
     * 用户登录接口，跳转到对应身份登录接口
     * @param name
     * @param psw
     * @param role
     */
    public void login(String name,String psw,int role);
}
