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
    public int addItemToCart(Integer itemid,Integer cartid,Integer num,Integer storeid);

    /**
     * 从购物车中删除Item
     * @param item
     * @return
     */

    public List<Cart> deleteItemFromCart(String item);

    /**
     * 清空购物车
     * @param item
     * @return
     */
    public List<Cart> clearCart(String item);

    /**
     * 结算购物车
     * @param item
     * @return
     */
    public List<Cart> checkOut(String item);

}
