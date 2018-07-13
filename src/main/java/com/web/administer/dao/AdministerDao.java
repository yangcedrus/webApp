package com.web.administer.dao;

import com.web.administer.entity.Administer;

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

}
