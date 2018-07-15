package com.web.store.dao;

import com.web.store.entity.Store;

/**
 * 创建一个接口用于声明商家登陆注册的方法
 */
public interface StoreDao {

    /**
     * 商家登录的方法
     */
    public Store login(String Name,String Psw);
    /**
     * 商家注册的方法
     */
    public  int register(Store store);
}
