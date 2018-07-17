package com.web.cart.dao;


import com.web.cart.entity.Cart;

import java.util.List;

/**
 * 创建一个接口用于实现购物车相关功能
 */
public interface CartDao {
    /**
     * 添加商品到购物车
     * @param itemid 商品id
     * @param cartid 购物车id
     * @param num 商品数量
     * @param storeid 商店id
     * @return 返回添加结果
     */
    public int addItemsToCart(Integer itemid,Integer cartid,Integer num,Integer storeid);

    /**
     *
     * @param itemid
     * @param cartid
     * @param num
     * @return
     */

    public int deleteItemsFromCart(Integer itemid, Integer cartid, Integer num);


    /**
     * @param itemid
     * @param cartid
     * @param num
     * @return
     */
    public int checkOut(Integer itemid, Integer cartid, Integer num);


}
