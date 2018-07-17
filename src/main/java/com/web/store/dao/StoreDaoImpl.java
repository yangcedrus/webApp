package com.web.store.dao;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

import com.web.administer.utils.BaseDao;
import com.web.item.entity.Item;
import com.web.store.entity.Store;

import static com.web.administer.utils.BaseDao.getCon;


public class StoreDaoImpl implements StoreDao {
    /**
     * @param name
     * @param psw
     * @return
     */
    public Store login(String name, String psw) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = getCon();//1:获取数据库连接
            //2:书写sql语句
            String sql = "select * from store where name=? and psw=? and state=1";
            ps = con.prepareStatement(sql);//3:预编译
            //4:设置值
            ps.setString(1, name);
            ps.setString(2, psw);
            rs = ps.executeQuery();//5:执行sql语句
            Store stores = null;
            if (rs.next()) {
                stores = new Store();
                //从数据库中获取值设置到实体类的setter方法中
                stores.setStoreid(rs.getInt("storeid"));
                stores.setName(rs.getString("name"));
                stores.setPsw(rs.getString("psw"));
                stores.setPhone(rs.getString("phone"));
                stores.setDescription(rs.getString("description"));
                stores.setSex(rs.getInt("sex"));
                stores.setState(rs.getInt("state"));
                return stores;
            } else {
                return null;
            }

        } catch (SQLException e) {
            //TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            //TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    /**
     * @param store
     * @return
     */
    @Override
    public int register(Store store) {
        Connection con = null;
        PreparedStatement ps = null;
        int flag = 0;
        try {
            //连接数据库
            con = getCon();
            //书写sql语句
            String sql = "insert into store(name,psw,phone,sex,description,state) values(?,?,?,?,?,1)";
            ps = con.prepareStatement(sql);
            //设置参数
            ps.setString(1, store.getName());
            ps.setString(2, store.getPsw());
            ps.setString(3, store.getPhone());
            ps.setInt(4, store.getSex());
            ps.setString(5, store.getDescription());
            //执行语句
            flag = ps.executeUpdate();
            //查看结果
            if (flag > 0) {
                flag = 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * 显示店铺商品
     *
     * @param name
     */
    public List<Item> store_item(String name) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        ResultSet res = null;
        List<Item> items = new ArrayList<Item>();
        Item item = null;
        int storeid = 0;
        try {
            con = getCon();//1:获取数据库连接
            //2:书写sql语句
            stmt = con.createStatement();
            String sql = "select storeid from store where name='" + name + "'";
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                storeid = rs.getInt("storeid");
                //System.out.print(storeid);
            }
            sql = "select * from item where storeid=? and state<>2";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1,storeid);
            rs = ps.executeQuery();
            while (rs.next()) {
                item=new Item();
                item.setItemid(rs.getInt("itemid"));
                item.setName(rs.getString("name"));
                System.out.println(item.getName());
                item.setPrice(rs.getDouble("price"));
                item.setStock(rs.getInt("stock"));
                item.setStoreid(storeid);
                item.setState(rs.getInt("state"));
                item.setDescription(rs.getString("description"));
                int itemid = rs.getInt("itemid");
                item.setImagePath(img(itemid));
                //System.out.println(item.getImagePath().get(0));
                items.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return items;
    }

    public List<String> img(int itemid) {
        List<String> imgs = new ArrayList<>();
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String Img = null;
        try {
            con = getCon();//1:获取数据库连接
            //2:书写sql语句
            stmt = con.createStatement();
            String sql = "select imagepath from image where itemid='" + itemid + "'";
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Img = rs.getString("imagepath");
                if(Img!=null)
                    imgs.add(Img);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return imgs;
    }

    public Store show_info(String name) {
        Connection con = null;
        Statement stmt = null;
        ResultSet res = null;
        Store store = new Store();
        try {
            con = getCon();
            stmt = con.createStatement();
            String sql = "select * from store where name='" + name + "' and state<>2";
            res = stmt.executeQuery(sql);
            if (res.next()) {
                store.setStoreid(res.getInt("storeid"));
                store.setName(name);
                store.setDescription(res.getString("description"));
                store.setPsw(res.getString("psw"));
                store.setPhone(res.getString("phone"));
                store.setSex(res.getInt("sex"));
                store.setState(res.getInt("state"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return store;
    }

    public boolean modi_item(int itemid, String name, String desc, Double price, int stock) {
        Connection con = null;
        Statement stmt = null;
        int res = 0;
        try {
            con = getCon();
            stmt = con.createStatement();
            String sql = "update item set name='" + name + "',description='" + desc + "',price='" + price + "',stock='" + stock + "' where itemid='" + itemid + "'";
            res = stmt.executeUpdate(sql);
            if (res > 0) {
                return true;
            } else {
                return false;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public String getstorename(int itemid) {
        Connection con = null;
        Statement stmt = null;
        int storeid = 0;
        String name = "";
        ResultSet res = null;
        ResultSet res1 = null;
        try {
            con = getCon();
            stmt = con.createStatement();
            String sql = "select storeid from item where itemid='" + itemid + "'";
            res = stmt.executeQuery(sql);
            if (res.next()) {
                storeid = res.getInt("storeid");
                String sql1 = "select name from store where storeid='" + storeid + "'";
                res1 = stmt.executeQuery(sql1);
                if (res1.next()) {
                    name = res1.getString("name");
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return name;
    }

    public boolean add_item(String name, double price, int stock, String desc, String store_name) {
        Connection con = null;
        PreparedStatement ps = null;
        Statement stmt = null;
        int storeid = 0;
        ResultSet res = null;
        int res1 = 0;
        try {
            con = getCon();
            stmt = con.createStatement();
            String sql = "select storeid from store where name='" + store_name + "'";
            res = stmt.executeQuery(sql);
            if (res.next()) {
                storeid = res.getInt("storeid");
                String sql1 = "insert into item(name,description,price,stock,storeid,state) values(?,?,?,?,?,0)";
                ps = con.prepareStatement(sql1);
                ps.setString(1, name);
                ps.setString(2, desc);
                ps.setDouble(3, price);
                ps.setInt(4, stock);
                ps.setInt(5, storeid);
                res1 = ps.executeUpdate();
                if (res1 > 0) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean getdown(int itemid) {
        Connection con = null;
        Statement stmt = null;
        int res1 = 0;
        try {
            con = getCon();
            stmt = con.createStatement();
            String sql = "update item set state=2 where itemid='"+itemid+"'";
            res1 = stmt.executeUpdate(sql);
            if (res1 > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }
}
