package com.web.administer.dao;

import com.web.administer.entity.Administer;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AdministerDaoImplTest {
    AdministerDaoImpl administerDao;
    @Test
    void login() {
        String name="管理员";
        String psw="123123";
        Administer administer;
        administerDao=new AdministerDaoImpl();
        administer=administerDao.login(name,psw);
        System.out.println(administer.getAdmiid()+"\n"+administer.getName());
    }
}