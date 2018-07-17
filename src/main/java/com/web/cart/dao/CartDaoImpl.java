package com.web.cart.dao;


import com.web.administer.utils.BaseDao;
import com.web.cart.entity.Cart;
import com.web.cart.entity.c_i;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 创建一个接口实现购物车添加删除清空购买等功能
 */
public class CartDaoImpl implements CartDao {
    /**
     * @param itemid 商品id
     * @return 返回添加结果
     */
    @Override
    public int addItemsToCart(Integer itemid, String name, Integer num) {
        List<Cart> carts = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        int flag = 0;
        try {
            //连接数据库x
            con = BaseDao.getCon();
            PreparedStatement ps1;
            ResultSet rs1;
            String sql1 = "select storeid from item where itemid=? and state <2";
            ps1 = con.prepareStatement(sql1);
            ps1.setInt(1, itemid);
            rs1 = ps1.executeQuery();
            Integer storeid = 0;
            Integer cartid = 0;
            if (rs1.next()) {
                storeid = rs1.getInt("storeid");
            }
            sql1 = "select cartid from cart where customerid=(select customerid from customer where name=? and state=1)";
            ps1 = con.prepareStatement(sql1);
            ps1.setString(1, name);
            rs1 = ps1.executeQuery();
            if (rs1.next()) {
                cartid = rs1.getInt("cartid");
            }
            BaseDao.close(con, ps1, rs1);
            con = BaseDao.getCon();
            //书写sql语句
            String sql = "insert into cartitem(cartid,itemid,num,storeid) values(?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setInt(1, cartid);
            ps.setInt(2, itemid);
            ps.setInt(3, num);
            ps.setInt(4, storeid);
            //执行sql语句
            flag = ps.executeUpdate();
            if (flag > 0) {
                flag = 1;
            } else {
                return 0;
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
    public int deleteItemsFromCart(Integer itemid, String name) {
        List<Cart> carts = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Integer cartid = 0;
        int flag = 0;
        try {
            //连接数据库
            con = BaseDao.getCon();
            PreparedStatement ps1;
            ResultSet rs1;
            String sql1 = "select cartid from cart where customerid=(select customerid from customer where name=?)";
            ps1 = con.prepareStatement(sql1);
            ps1.setString(1, name);
            rs1 = ps1.executeQuery();
            if (rs1.next()) {
                cartid = rs1.getInt("cartid");
            }
            //书写sql语句
            String sql = "delete from cartitem where cartid=? and itemid=?";
            ps = con.prepareStatement(sql);
            //写入参数
            ps.setInt(1, cartid);
            ps.setInt(2, itemid);
            //执行sql语句
            flag = ps.executeUpdate();
            if (flag > 0) {
                flag = 1;
            } else {
                return 0;
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
    public int checkOut(Integer itemid, Integer cartid, Integer num) {
        List<Cart> carts = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int flag = 0;
        try {
            //连接数据库
            con = BaseDao.getCon();
            //书写sql语句
            String sql = "delete from cartitem where cartid=? and itemid=? and num=?";
            ps = con.prepareStatement(sql);
            //写入参数
            ps.setInt(1, cartid);
            ps.setInt(2, itemid);
            ps.setInt(3, num);
            //执行sql语句
            flag = ps.executeUpdate();
            if (flag > 0) {
                flag = 1;
            } else {
                return 0;
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
    public Cart showMyCart(String customername) {
        Cart cart = new Cart();
        List<c_i> c_is = new ArrayList<>();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        try {
            con = BaseDao.getCon();
            String customerid = "select customerid from customer where name=? and state=1";
            String cartid = "select cartid from cart where customerid=(" + customerid + ")";
            String sql = "select * from cartitem where cartid=(" + cartid + ")";
            ps = con.prepareStatement(sql);
            ps.setString(1, customername);

            rs = ps.executeQuery();
            while (rs.next()) {
                c_i c = new c_i();

                c.setItemid(rs.getInt("itemid"));
                c.setNum(rs.getInt("num"));
                c.setStoreid(rs.getInt(rs.getInt("storeid")));

                c_is.add(c);
            }
            sql = "select * from cart where customerid=(" + customerid + ")";
            ps = con.prepareStatement(sql);
            ps.setString(1, customername);
            rs = ps.executeQuery();
            if (rs.next()) {
                cart.setCartid(rs.getInt("cartid"));
                cart.setCustomerid(rs.getInt("customerid"));
                cart.setTotal(rs.getDouble("total"));
            }
            cart.setCartitem(c_is);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return cart;
    }

    @Override
    public int updateNum(String name, Integer itemid, Integer num) {
        Connection con;
        PreparedStatement ps;
        int flag = 0;
        try {
            con = BaseDao.getCon();
            String sql1="select cartid from cart where customerid=(select customerid from customer where name=?)";
            ps=con.prepareStatement(sql1);
            ps.setString(1,name);
            ResultSet rs=ps.executeQuery();
            int cartid=0;
            if(rs.next()){
                cartid=rs.getInt("cartid");
            }
            String sql = "update cartitem set num=? where itemid=? and cartid=?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, num);
            ps.setInt(2, itemid);
            ps.setInt(3, cartid);

            flag = ps.executeUpdate();
            if (flag > 0) {
                flag = 1;
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
}