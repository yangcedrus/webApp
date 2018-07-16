package com.web.store.dao;

import com.web.item.entity.Item;
import com.web.store.entity.Store;

import java.util.List;

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
    public List<Item> store_item(String name);
    public List<String> img(int itemid);
    public Store show_info(String name);
    public boolean modi_item(int itemid,String name,String desc,Double price,int stock);
    public String getstorename(int itemid);
    public boolean add_item(String name,double price,int stock,String desc,String store_name);
    public boolean getdown(int itemid);
}
