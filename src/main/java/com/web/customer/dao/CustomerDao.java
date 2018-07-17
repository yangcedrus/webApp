package com.web.customer.dao;

import com.web.customer.entity.Customer;

/**
 * @author 22278
 * 买家数据层
 */
public interface CustomerDao {
    /**
     * 买家登录接口
     * @param name 用户名
     * @param psw 用户密码
     * @return 返回买家所有信息
     */
    public Customer login(String name,String psw);

    /**
     * 买家注册接口
     * @param customer 需要注册的买家信息
     * @return 返回注册结果信息
     */
    public int register(Customer customer);

    public int updateInfo(String customername,String Phone,String psw);
}
