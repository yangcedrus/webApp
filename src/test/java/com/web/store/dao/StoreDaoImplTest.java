package com.web.store.dao;

import com.web.administer.dao.AdministerDaoImpl;
import com.web.item.entity.Item;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class StoreDaoImplTest {
    StoreDaoImpl storeDao;

    @Test
    void store_item() {
        List<Item> items = null;
        storeDao = new StoreDaoImpl();
        items = storeDao.store_item("卖家1");
        for (int i = 0; i < items.size(); i++) {
            System.out.println(items.get(i).getItemid());
            System.out.println(items.get(i).getDescription());
            System.out.println(items.get(i).getName());
        }
    }

    @Test
    void modi_item() {
        storeDao = new StoreDaoImpl();
        System.out.println(storeDao.modi_item(14, "辣条", "好吃", 2.0, 233));
    }

    @Test
    void add_item() {
        storeDao = new StoreDaoImpl();
        System.out.println(storeDao.add_item("冰淇淋",12.0,133,"草莓味","卖家1"));
    }
}