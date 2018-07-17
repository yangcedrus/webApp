package com.web.address.dao;

import com.web.address.entity.Address;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class AddressDaoImplTest {
    AddressDaoImpl addressDao;
    @Test
    void getAddress() {
        addressDao=new AddressDaoImpl();
        List<Address> address=addressDao.GetAddress(100);
        if(address!=null) {
            for (int i = 0; i < address.size(); i++) {
                System.out.println(address.get(i));
            }
        }
    }
@Test
    void saveaddress(){
        addressDao=new AddressDaoImpl();
        boolean res=addressDao.SaveAddrss(100,"黑龙江省-双鸭山市-美术馆");
        System.out.println(res);
    }
    @Test
    void modiaddress(){
        addressDao=new AddressDaoImpl();
        boolean res=addressDao.ModiAddress(4,"黑龙江省-双鸭山市-美术馆");
        System.out.println(res);
    }
    @Test
    void deleaddress(){
        addressDao=new AddressDaoImpl();
        boolean res=addressDao.DeleAddress(7);
        System.out.println(res);
    }
}