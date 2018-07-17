package com.web.cart.dao;


import com.web.cart.entity.Cart;
import com.web.item.entity.Item;

import java.util.List;

/**
 * 创建一个接口用于实现购物车相关功能
 */
public interface CartDao {
    /**
     * 添加商品到购物车
     * @param itemid 商品id
     * @param name 买家名
     * @param num 商品数量
     * @return 返回添加结果
     */
    public int addItemsToCart(Integer itemid,String name,Integer num);

    /**
     *
     * @param itemid
     * @param name
     * @return
     */

    public int deleteItemsFromCart(Integer itemid, String name);


    /**
     * @param itemid
     * @param cartid
     * @param num
     * @return
     */
    public int checkOut(Integer itemid, Integer cartid, Integer num);

    /**
     * 显示购物车中所有物品
     * @param customername
     * @return
     */
    public Cart showMyCart(String customername);

    /**
     * 更新商品数量
     * @param name
     * @param itemid
     * @param num
     * @return
     */
    public int updateNum(String name,Integer itemid,Integer num);
}
