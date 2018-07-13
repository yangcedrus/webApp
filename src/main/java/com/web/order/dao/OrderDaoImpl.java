package com.web.order.dao;

import com.web.administer.utils.BaseDao;
import com.web.order.entity.Order;

import java.sql.*;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * 订单管理接口实现类
 */
public class OrderDaoImpl implements OrderDao{
    @Override
    public boolean addOrder(String ordernum, int customerid, int itemid, int num) {
        Connection con= null;
        PreparedStatement ps=null;
        Statement stmt=null;
        ResultSet rs=null;
        ResultSet rs1=null;
        double total=0;
        double price=0;
        try {
            java.sql.Date sqlDate=new java.sql.Date(System.currentTimeMillis());
            System.out.println(sqlDate);
            int res=0;

            con= BaseDao.getCon();
            String sql="select price from item where itemid='"+itemid+"'";
            stmt=con.createStatement();
            rs1=stmt.executeQuery(sql);
            if(rs1.next()){
                price=rs1.getDouble("price");
                total=num*price;
            }
            sql="insert into orderr(ordernumber,customerid,itemid,num,startt,state,total) values(?,?,?,?,?,'1',?)";
            ps=con.prepareStatement(sql);
            ps.setString(1,ordernum);
            ps.setInt(2,customerid);
            ps.setInt(3,itemid);
            ps.setInt(4,num);
            ps.setDate(5,sqlDate);
            ps.setDouble(6,total);
            res=ps.executeUpdate();
            if(res>0){
                return true;
            }else{
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
    public List<Order> showOrder(int customerid) {
        Connection con= null;
        Statement stmt=null;
        ResultSet rs=null;
        List<Order> order=new ArrayList<Order>();
        Order order1=null;
        ResultSet res=null;
        //连接数据库
        try {
            con=BaseDao.getCon();
            stmt=con.createStatement();
            String sql="select * from orderr where customerid ='"+customerid+"'";
            res=stmt.executeQuery(sql);
            order1=new Order();
            while(res.next()){
                order1.setOrderid(res.getInt("orderid"));
                //System.out.println(order1.getOrderid());
                order1.setOrdernumber(res.getString("ordernumber"));
                order1.setCustomerid(res.getInt("customerid"));
                order1.setItemid(res.getInt("itemid"));
                order1.setNum(res.getInt("num"));
                order1.setStartt(res.getDate("startt").toString());
                //System.out.println(order1.getStartt());
                order1.setState(res.getInt("state"));
                if(order1.getState()>1){
                    order1.setEndt(res.getDate("endt").toString());
                }
                order1.setTotal(res.getDouble("total"));
                order.add(order1);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return order;
    }

    @Override
    public boolean changeState(int orderid,String state) {
        Connection con= null;
        Statement stmt=null;
        int res=0;
        Order order=null;
        java.sql.Date endt=new java.sql.Date(System.currentTimeMillis());
        try {
            con = BaseDao.getCon();
            stmt = con.createStatement();
            String sql = "update orderr set state='" + state + "' where orderid='" + orderid + "'";
            res = stmt.executeUpdate(sql);
            if (res > 0) {
                if (state.equals("3")) {
                    sql = "update orderr set endt='" + endt + "' where orderid='" + orderid + "'";
                    res = stmt.executeUpdate(sql);
                    if (res > 0) {
                        return true;
                    }else {
                        return false;
                    }
                }else {
                    return true;
                }
            }else {
                return false;
            }
        } catch(ClassNotFoundException e){
                e.printStackTrace();
                return false;
        } catch(SQLException e){
                e.printStackTrace();
                return false;
        }

    }
}
