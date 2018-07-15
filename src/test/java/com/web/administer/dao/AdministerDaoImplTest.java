package com.web.administer.dao;

import com.web.administer.entity.Administer;
import com.web.item.entity.Item;
import org.junit.jupiter.api.Test;

import javax.servlet.annotation.WebServlet;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class AdministerDaoImplTest {
    AdministerDaoImpl administerDao;
    @Test
    void login(){
        String name="管理员1";
        String psw="123456";
        Administer administer;
        administerDao=new AdministerDaoImpl();
        administer=administerDao.login(name,psw);
        System.out.println(administer.getAdmiid()+"\n"+administer.getName());
    }
    @Test
    void show_items(){
        List<Item> items =null;
        administerDao=new AdministerDaoImpl();
        items=administerDao.show_items();
        for(int i=0;i<items.size();i++){
            System.out.println(items.get(i).getItemid());
            System.out.println(items.get(i).getDescription());
            System.out.println(items.get(i).getName());
        }
    }
    @Test
    void details(){
        Item item;
        administerDao=new AdministerDaoImpl();
        item=administerDao.show_item(13);
        if(item!=null) {
            System.out.println(item.getItemid());
            System.out.println(item.getDescription());
            System.out.println(item.getName());
        }else {
            System.out.println("meiyou");
        }
    }
    @Test
    void pass(){
        boolean res;
        administerDao=new AdministerDaoImpl();
        res=administerDao.getpass("13");
        System.out.println(res);
    }
}