package com.web.order.dao;

import com.web.administer.dao.AdministerDao;
import com.web.administer.dao.AdministerDaoImpl;
import com.web.administer.utils.BaseDao;
import com.web.customer.entity.Customer;
import com.web.item.dao.ItemDao;
import com.web.item.dao.ItemDaoImpl;
import com.web.item.entity.Item;
import com.web.order.entity.Order;

import java.sql.*;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * 订单管理接口实现类
 */
public class OrderDaoImpl implements OrderDao{
    @Override
    public boolean addOrder(String customername, int itemid, int num) {
        Connection con= null;
        PreparedStatement ps=null;
        int rs=0;
        ResultSet rs1;
        double total=0;
        double price=0;
        AdministerDao dao=new AdministerDaoImpl();
        Customer customer=dao.searchCustomer(customername);
        try {
            Date sqlDate=new Date(System.currentTimeMillis());
            con= BaseDao.getCon();

            String sql="select price from item where itemid=? and state=1";
            ps=con.prepareStatement(sql);
            ps.setInt(1,itemid);

            rs1=ps.executeQuery();
            if(rs1.next()){
                price=rs1.getDouble("price");
                total=num*price;
            }

            //格式化当前时间
            SimpleDateFormat sfDate = new SimpleDateFormat("yyyyMMddHHmmssSSS");
            String strDate = sfDate.format(new java.util.Date());
            //得到17位时间如：20170411094039080
            //为了防止高并发重复,再获取3个随机数
            String random = getRandom620(3);

            //最后得到20位订单编号。
            String ordernum=strDate+random;

            sql="insert into orderr(ordernumber,customerid,itemid,num,startt,state,total) values(?,?,?,?,?,'1',?)";
            ps=con.prepareStatement(sql);
            ps.setString(1,ordernum);
            ps.setInt(2,customer.getCustomerid());
            ps.setInt(3,itemid);
            ps.setInt(4,num);
            ps.setDate(5,sqlDate);
            ps.setDouble(6,total);

            rs=ps.executeUpdate();
            if(rs>0){
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

    /**
     * 随机数
     * @param length
     * @return
     */
    public static String getRandom620(Integer length) {
        String result = "";
        Random rand = new Random();
        int n = 20;
        if (null != length && length > 0) {
            n = length;
        }
        int randInt = 0;
        for (int i = 0; i < n; i++) {
            randInt = rand.nextInt(10);
            result += randInt;
        }
        return result;
    }

    @Override
    public List<Order> showOrder(String customername) {
        Connection con= null;
        PreparedStatement ps;
        ResultSet rs=null;
        List<Order> order=new ArrayList<>();
        Order order1=null;
        ResultSet res=null;
        //连接数据库
        try {
            con=BaseDao.getCon();
            String sql="select * from orderr where name =?";
            ps=con.prepareStatement(sql);
            ps.setString(1,customername);
            res=ps.executeQuery();
            order1=new Order();
            AdministerDao dao1=new AdministerDaoImpl();
            ItemDao dao2=new ItemDaoImpl();
            while(res.next()){
                order1.setOrderid(res.getInt("orderid"));
                //System.out.println(order1.getOrderid());
                order1.setOrdernumber(res.getString("ordernumber"));
                order1.setCustomer(dao1.searchCustomer(res.getInt("customerid")));
                order1.setItem(dao2.getOneItem(res.getInt("itemid")));
                order1.setNum(res.getInt("num"));
                order1.setStartt(res.getDate("startt").toString());
                //System.out.println(order1.getStartt());
                order1.setState(res.getInt("state"));
                // TODO: 2018/7/16 确认订单完成时间
                if(order1.getState()>2){
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

    /**
     * 改变订单状态
     * @param orderid
     * @param state
     * @return
     */
    @Override
    public boolean changeState(int orderid,int state) {
        Connection con= null;
        PreparedStatement ps;
        int res=0;
        Order order=null;
        java.sql.Date endt=new java.sql.Date(System.currentTimeMillis());
        try {
            con = BaseDao.getCon();
            String sql = "update orderr set state=? where orderid=?";
            ps=con.prepareStatement(sql);
            ps.setInt(1,state);
            ps.setInt(2,orderid);

            res = ps.executeUpdate();
            if (res > 0) {
                if (state==3) {
                    sql = "update orderr set endt=? where orderid=?";
                    ps=con.prepareStatement(sql);
                    ps.setDate(1,endt);
                    ps.setInt(2,orderid);

                    res = ps.executeUpdate();
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
