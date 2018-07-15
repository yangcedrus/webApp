package com.web.administer.dao;

import com.web.administer.entity.Administer;
import com.web.administer.utils.BaseDao;
import com.web.item.entity.Item;
import com.web.order.entity.Order;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.*;

import static com.web.administer.utils.BaseDao.*;

/**
 * 管理员接口实现类
 */
public class AdministerDaoImpl implements AdministerDao{
    @Override
    public Administer login(String name, String psw){
        Connection con= null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        Administer administer=null;
        try{
            //连接数据库
            con= getCon();
            //书写sql语句
            String sql="select * from admin where name=? and psw=?";
            ps=con.prepareStatement(sql);
            //设置参数
            ps.setString(1,name);
            ps.setString(2,psw);
            //执行sql语句
            rs=ps.executeQuery();
            if(rs.next()){
                administer=new Administer();
                //数据库数据对应到实体中
                administer.setAdmiid(rs.getInt("adminid"));
                administer.setName(name);
                administer.setPsw(psw);
            }
            else {
                System.out.println("用户名不存在或密码错误，请重新输入");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return administer;
    }
    @Override
    public boolean delete_u(String customerid){
        Connection con= null;
        Statement stmt=null;
        int rs=0;
        try {
            //连接数据库
            con= getCon();
            //书写sql语句
            String sql="update customer set state=0 where customerid='"+customerid+"'";
            stmt=con.createStatement();
            rs=stmt.executeUpdate(sql);
            if(rs>0){
                return true;
            }else {
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
    @Override
    public boolean modi_u(String customerid,String psw,int sex){
        Connection con= null;
        Statement stmt=null;
        int rs=0;
        try {
            //连接数据库
            con= getCon();
            //书写sql语句
            String sql="update customer set psw='"+psw+"' and sex='"+sex+"' where customerid='"+customerid+"'";
            stmt=con.createStatement();
            rs=stmt.executeUpdate(sql);
            if(rs>0){
                return true;
            }else {
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
    @Override
    public boolean nopass(String itemid,String reason){
        Connection con= null;
        Statement stmt=null;
        int rs=0;
        try {
            //连接数据库
            con= getCon();
            //书写sql语句
            String sql="update item set state=3 where itemid='"+itemid+"'";
            stmt=con.createStatement();
            rs=stmt.executeUpdate(sql);
            if(rs>0){
                return true;
            }else {
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
    @Override
    public List<Item> show_items(){
        List<Item> items=new ArrayList<Item>();
        Connection con= null;
        Statement stmt=null;
        ResultSet res=null;
        try {
            //连接数据库
            con= getCon();
            String sql="select * from item where state=0";
            stmt=con.createStatement();
            res=stmt.executeQuery(sql);
            Item item=new Item();
            while(res.next()){
                if(res.getInt("state")==0) {
                    item.setItemid(res.getInt("itemid"));
                    System.out.println(item.getItemid());
                    item.setName(res.getString("name"));
                    item.setDescription(res.getString("description"));
                    item.setPrice(res.getDouble("price"));
                    item.setStock(res.getInt("stock"));
                    item.setStoreid(res.getInt("storeid"));
                    item.setState(res.getInt("state"));
                    items.add(item);
                    //item=null;
                }

            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return items;
    }
    @Override
    public Item show_item(int itemid){
        Item item=new Item();
        Connection con= null;
        Statement stmt=null;
        ResultSet res=null;
        ResultSet res1=null;
        try {
            //连接数据库
            con= getCon();
            String sql="select * from item where itemid='"+itemid+"'";
            stmt=con.createStatement();
            res=stmt.executeQuery(sql);
            if(res.next()){
                item.setItemid(res.getInt("itemid"));
                //System.out.println(res.getInt("itemid"));
                item.setName(res.getString("name"));
                item.setDescription(res.getString("description"));
                item.setPrice(res.getDouble("price"));
                item.setStock(res.getInt("stock"));
                item.setStoreid(res.getInt("storeid"));
                item.setState(res.getInt("state"));
                sql="select imagepath from image where itemid='"+itemid+"'";
                res1=stmt.executeQuery(sql);
                List<String> img=new ArrayList<String>();
                String img1="";
                while(res1.next()){
                    img1=res1.getString("imagepath");
                    img.add(img1);
                }
                if(img.size()>0){
                    item.setImagePath(img);
                }else {
                    item.setImagePath(null);
                }
            }else {
                System.out.println("false");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return item;
    }
    public boolean getpass(String itemid){
        Connection con= null;
        Statement stmt=null;
        int rs=0;
        try {
            //连接数据库
            con= getCon();
            //书写sql语句
            String sql="update item set state=1 where itemid='"+itemid+"'";
            stmt=con.createStatement();
            rs=stmt.executeUpdate(sql);
            if(rs>0){
                return true;
            }else {
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
}
