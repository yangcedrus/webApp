package com.web.item.dao;

import com.web.item.entity.Item;

import java.util.List;

/**
 * 商品数据层
 */
public interface ItemDao {
    /**
     * 通过商品名称搜索商品
     * @param name 模糊查询名称
     * @return 查询到的商品List
     */
    public List<Item> serachItemByName(String name);

    /**
     * 通过商品状态查询商品
     * TODO 仅用于未审核商品查找
     * @param State 要查询的商品状态
     * @return  查询到的商品List
     */
    public List<Item> searchItemByState(int State);

    /**
     * 以时间顺序显示商品
     * @return 查询到的商品List
     */
    public List<Item> searchItemByTime();

    /**
     * 上架商品
     * @param item 上架的商品信息
     * @return
     */
    public int addItem(Item item);
}
