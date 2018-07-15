package com.web.cart.dao;


import com.web.administer.utils.BaseDao;
import com.web.cart.entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *  创建一个接口实现购物车添加删除清空购买等功能
 */
public class CartDaoImpl implements CartDao{
    public int addItemToCart (Cart cart){
        List<Cart> carts=new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int flag = 0;
        try {
            //连接数据库
            con = BaseDao.getCon();
            //书写sql语句
            for(String s : cart.getCartitem()){
            String sql= "insert into cartitem(cartid,itemid,num,storeid) values(?,?,?,?)";
            ps = con.prepareStatement(sql);
            //写入参数
            ps.setInt(1,cart.getCartid());
            ps.setString(2,s);
            //执行sql语句
            flag = ps.executeUpdate();
            if (flag > 0) {
                flag = 1;
            } else {
                return 0;
            }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
        return flag;
    }

    public int deleteItemFromCart (Cart cart){
        List<Cart> carts=new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int flag = 0;
        try {
            //连接数据库
            con = BaseDao.getCon();
            //书写sql语句
            for(String s : cart.getCartitem()){
                String sql= "delete from cartitem where cartid=?";
                ps = con.prepareStatement(sql);
                //写入参数
                ps.setInt(1,cart.getCartid());
                ps.setString(2,s);
                //执行sql语句
                flag = ps.executeUpdate();
                if (flag > 0) {
                    flag = 1;
                } else {
                    return 0;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
        return flag;
    }

    @Override
    public List<Cart> deleteItemFromCart(String item) {
        return null;
    }

    @Override
    public List<Cart> clearCart(String item) {
        return null;
    }

    @Override
    public List<Cart> checkOut(String item) {
        return null;
    }

    private void form_cart(List<Cart> carts, ResultSet rs) {
    }

    String sql2= "insert into cartitem(cartid,itemid,num,storeid) values(?,?,?,?)";
}
