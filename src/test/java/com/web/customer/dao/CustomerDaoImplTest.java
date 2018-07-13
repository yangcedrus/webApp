package com.web.customer.dao;

import com.web.customer.entity.Customer;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CustomerDaoImplTest {
    CustomerDaoImpl customerDao;

    @Test
    void login() {
        String name="张三";
        String psw="123456";
        Customer customer;
        customerDao=new CustomerDaoImpl();
        customer=customerDao.login(name,psw);
        System.out.println(customer.getCustomerid()+"\n"+customer.getName());
    }
}