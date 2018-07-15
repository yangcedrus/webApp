package com.web.item.entity;

import java.util.List;

/**
 * 商品实体类
 */
public class Item {
    private Integer itemid;    //商品ID
    private String name;    //商品名称
    private Double price;   //商品价格
    private Integer stock;       //商品库存
    private Integer storeid;   //商品所属店家ID
    private String description; //商品描述
    private Integer state;     //商品状态0未审核 1已审核 2已下架 3审核未通过
    private List<String> imagePath; //商品图片地址

    public List<String> getImagePath() {
        return imagePath;
    }

    public void setImagePath(List<String> imagePath) {
        this.imagePath = imagePath;
    }

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getStoreid() {
        return storeid;
    }

    public void setStoreid(Integer storeid) {
        this.storeid = storeid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
