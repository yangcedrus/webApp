package com.web.customer.dao;

import com.web.customer.entity.Customer;
import org.junit.jupiter.api.Test;

class CustomerDaoImplTest {
    private CustomerDao customerDao;

    @Test
    void login() {
        String name="李四";
        String psw="123456";
        Customer customer;
        customerDao=new CustomerDaoImpl();
        customer=customerDao.login(name,psw);
        System.out.println(customer.getCustomerid()+"\n"+customer.getName());
    }

    @Test
    void register(){
        Customer customer=new Customer();
        customer.setName("李四");
        customer.setPsw("123456");
        customer.setSex(0);
        customer.setPhone("12345678987");
        customerDao=new CustomerDaoImpl();
        int i=customerDao.register(customer);
        System.out.println(i);
    }
}