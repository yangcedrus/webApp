package com.web.administer.dao;

import com.web.administer.entity.Administer;
import com.web.item.entity.Item;

import java.util.List;

/**
 * 管理员数据层
 */
public interface AdministerDao {
    /**
     * 管理员登录接口
     * @param name 用户名
     * @param psw 用户密码
     * @return 返回管理员所有信息
     */
    public Administer login(String name, String psw);
    public boolean delete_u(String customerid);
    public boolean modi_u(String customerid,String psw,int sex);
    public boolean nopass(String itemid,String reason);
    public List<Item> show_items();
    public Item show_item(int itemid);
    public boolean getpass(String itemid);
}
