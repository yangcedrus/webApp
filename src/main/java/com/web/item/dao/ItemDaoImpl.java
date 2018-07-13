package com.web.item.dao;

import com.web.administer.utils.BaseDao;
import com.web.item.entity.Item;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 商品交互层实现
 */
public class ItemDaoImpl implements ItemDao {

    /**
     * 根据商品名称查询商品
     * @param name 模糊查询名称
     * @return 商品信息列表
     */
    @Override
    public List<Item> serachItemByName(String name) {
        List<Item> items = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            //连接数据库
            con = BaseDao.getCon();
            //书写sql语句
            String sql = "select * from item where name like %?% and state<>2";
            ps = con.prepareStatement(sql);
            //写入参数
            ps.setString(1, name);
            //执行sql语句
            rs = ps.executeQuery();

            form_item(items, rs);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
        return items;
    }

    /**
     * 根据状态返回商品信息
     * @param state 要查询的状态
     * @return  商品信息列表
     */
    @Override
    public List<Item> searchItemByState(int state) {
        List<Item> items = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            //连接数据库
            con = BaseDao.getCon();
            //书写sql语句
            String sql = "select * from item where state=?";
            ps = con.prepareStatement(sql);
            //写入参数
            ps.setInt(1, state);
            //执行sql语句
            rs = ps.executeQuery();

            form_item(items, rs);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
        return items;
    }

    /**
     * 根据时间返回商品信息
     * @return 商品列表
     */
    @Override
    public List<Item> searchItemByTime() {
        List<Item> items = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            //连接数据库
            con = BaseDao.getCon();
            //书写sql语句
            String sql = "select * from item order by rand()";
            ps = con.prepareStatement(sql);
            //执行sql语句
            rs = ps.executeQuery();

            form_item(items, rs);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
        return items;
    }

    /**
     * 上架商品
     * @param item 上架的商品信息
     * @return 添加结果
     */
    @Override
    public int addItem(Item item) {
        Connection con = null;
        PreparedStatement ps = null;
        int flag = 0;
        try {
            //连接数据库
            con = BaseDao.getCon();
            //书写sql语句
            String sql1 = "insert into item(name,description,price,stock,storeid,state) values(?,?,?,?,?,0)";
            ps = con.prepareStatement(sql1);
            ps.setString(1, item.getName());
            ps.setString(2, item.getDescription());
            ps.setDouble(3, item.getPrice());
            ps.setInt(4, item.getStock());
            ps.setInt(5, item.getStoreid());
            //执行sql语句
            flag = ps.executeUpdate();
            if (flag > 0) {
                flag = 1;
            } else {
                return 0;
            }
            ps = null;
            for (String s : item.getImagePath()) {
                //书写sql语句
                String sql2 = "insert into image(itemid,imagepath) values(?,?)";
                ps = con.prepareStatement(sql2);
                //设置参数
                ps.setInt(1, item.getItemid());
                ps.setString(2, s);
                //执行sql语句
                flag = ps.executeUpdate();
                if (flag <= 0)
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

    /**
     * 拼装返回值
     * @param items 商品列表
     * @param rs 数据库结果返回对象
     * @throws SQLException
     */
    private void form_item(List<Item> items, ResultSet rs) throws SQLException {
        if (rs.next()) {
            Item item = new Item();
            //拼装实体类
            item.setItemid(rs.getInt("itemid"));
            item.setName(rs.getString("name"));
            item.setDescription(rs.getString("description"));
            item.setPrice(rs.getDouble("price"));
            item.setStock(rs.getInt("stock"));
            item.setStoreid(rs.getInt("storeid"));
            item.setState(rs.getInt("state"));
            //添加到list
            items.add(item);
        }
    }
}
