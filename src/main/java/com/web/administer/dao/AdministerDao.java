package com.web.administer.dao;

import com.web.administer.entity.Administer;
import com.web.customer.entity.Customer;

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

    /**
     * 修改买家密码
     * @param name 要修改密码的用户名
     * @param psw 要修改的密码
     * @return 修改结果 0失败 1成功
     */
    public int modifyCustomer(String name,String psw);

    /**
     * 查找所有买家用户信息
     * @return 所有用户信息的List
     */
    public List<Customer> searchAllCustomer();

    /**
     * 查找买家用户信息
     * @return 买家信息
     */
    public Customer searchCustomer(Integer customerid);

    /**
     * 删除买家用户
     * @param customerid 买家用户账号id
     * @return 删除结果
     */
    public int deleteCustomer(Integer customerid);
}
