package com.web.cart.dao;


import com.web.cart.entity.Cart;

import java.util.List;

/**
 * 创建一个接口用于实现购物车相关功能
 */
public interface CartDao {
    /**
     * 添加Item到购物车中
    * @param cart
     * @return
     */
    public int addItemToCart (Cart cart);

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
