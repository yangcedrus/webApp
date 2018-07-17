package com.web.administer.dao;

import com.web.administer.entity.Administer;
import com.web.administer.utils.BaseDao;
import com.web.customer.entity.Customer;
import com.web.item.entity.Item;
import com.web.store.entity.Store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 管理员接口实现类
 */
public class AdministerDaoImpl implements AdministerDao{
    /**
     * @param name 用户名
     * @param psw 用户密码
     * @return 管理员信息
     */
    @Override
    public Administer login(String name, String psw){
        Connection con= null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        Administer administer=null;
        try{
            //连接数据库
            con= BaseDao.getCon();
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

    /**
     * @param name 要修改密码的用户名
     * @param psw 要修改的密码
     * @return 修改结果
     */
    @Override
    public int modifyCustomer(String name, String psw) {
        int flag=0;
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        try {
            //链接数据库
            con=BaseDao.getCon();
            //书写sql语句
            String sql="update customer set psw=? where name=? and state=1";
            ps=con.prepareStatement(sql);
            //输入参数
            ps.setString(1,psw);
            ps.setString(2,name);
            //执行sql语句
            flag=ps.executeUpdate();
            if(flag>0){
                flag=1;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * @return 买家用户列表
     */
    @Override
    public List<Customer> searchAllCustomer() {
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        List<Customer> customers=new ArrayList<>();
        try {
            //链接数据库
            con=BaseDao.getCon();
            //书写sql语句
            String sql="select * from customer  where state=1 order by customerid";
            ps=con.prepareStatement(sql);
            //执行sql语句
            rs=ps.executeQuery();
            //拼装实体
            while(rs.next()){
                Customer customer=new Customer();

                customer.setCustomerid(rs.getInt("customerid"));
                customer.setName(rs.getString("name"));
                customer.setPsw(rs.getString("psw"));
                customer.setSex(rs.getInt("sex"));
                customer.setPhone(rs.getString("phone"));
                customer.setState(rs.getInt("state"));

                customers.add(customer);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public Customer searchCustomer(Integer customerid) {
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        Customer customer=new Customer();
        try {
            //链接数据库
            con=BaseDao.getCon();
            //书写sql语句
            String sql="select * from customer  where customerid=? and state=1";
            ps=con.prepareStatement(sql);
            ps.setInt(1,customerid);
            //执行sql语句
            rs=ps.executeQuery();
            //拼装实体
            if(rs.next()){
                customer.setCustomerid(rs.getInt("customerid"));
                customer.setName(rs.getString("name"));
                customer.setPsw(rs.getString("psw"));
                customer.setSex(rs.getInt("sex"));
                customer.setPhone(rs.getString("phone"));
                customer.setState(rs.getInt("state"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return customer;
    }

    @Override
    public Customer searchCustomer(String customername) {
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        Customer customer=new Customer();
        try {
            //链接数据库
            con=BaseDao.getCon();
            //书写sql语句
            String sql="select * from customer  where name=? and state=1";
            ps=con.prepareStatement(sql);
            ps.setString(1,customername);
            //执行sql语句
            rs=ps.executeQuery();
            //拼装实体
            if(rs.next()){
                customer.setCustomerid(rs.getInt("customerid"));
                customer.setName(rs.getString("name"));
                customer.setPsw(rs.getString("psw"));
                customer.setSex(rs.getInt("sex"));
                customer.setPhone(rs.getString("phone"));
                customer.setState(rs.getInt("state"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return customer;
    }

    /**
     *
     * @param storename
     * @return
     */
    @Override
    public Store searchStore(String storename) {
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        Store store=null;
        try {
            con=BaseDao.getCon();
            String sql="select * from store where name=? and state=1";
            ps=con.prepareStatement(sql);
            ps.setString(1,storename);

            rs=ps.executeQuery();
            if(rs.next()){
                store=new Store();

                store.setName(rs.getString("name"));
                store.setPhone(rs.getString("phone"));
                store.setDescription(rs.getString("description"));
                store.setPsw(rs.getString("psw"));
                store.setSex(rs.getInt("sex"));
                store.setState(rs.getInt("state"));
                store.setStoreid(rs.getInt("storeid"));
            }
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }catch (ClassNotFoundException e){
            e.printStackTrace();
            return null;
        }
        return store;
    }

    /**
     *
     * @param customerid 买家用户账号id
     * @return 删除结果
     */
    @Override
    public int deleteCustomer(Integer customerid) {
        int flag=0;
        Connection con;
        PreparedStatement ps;
        try {
            //链接数据库
            con=BaseDao.getCon();
            //书写sql语句
            String sql="update customer set state=0 where customerid=? and state=1";
            ps=con.prepareStatement(sql);
            ps.setInt(1,customerid);
            //执行sql语句
            flag=ps.executeUpdate();
            if(flag>0){
                flag=1;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * 未通过审核
     * @param itemid 商品id
     * @param reason 未通过理由
     * @return
     */
    @Override
    public boolean nopass(Integer itemid,String reason){
        Connection con= null;
        PreparedStatement ps=null;
        int rs=0;
        try {
            //连接数据库
            con=BaseDao.getCon();
            //书写sql语句
            //3为未通过审核
            String sql="update item set state=3 where itemid=?";
            ps=con.prepareStatement(sql);

            ps.setInt(1,itemid);

            rs=ps.executeUpdate(sql);
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

    /**
     * 查询所有商品
     * @return
     */
    @Override
    public List<Item> show_items(){
        List<Item> items=new ArrayList<Item>();
        Connection con= null;
        PreparedStatement ps=null;
        ResultSet res=null;
        try {
            //连接数据库
            con= BaseDao.getCon();
            String sql="select * from item where state=0";
            ps=con.prepareStatement(sql);

            res=ps.executeQuery();
            while(res.next()){
                Item item=new Item();

                item.setItemid(res.getInt("itemid"));
                item.setName(res.getString("name"));
                item.setDescription(res.getString("description"));
                item.setPrice(res.getDouble("price"));
                item.setStock(res.getInt("stock"));
                item.setStoreid(res.getInt("storeid"));
                item.setState(res.getInt("state"));

                items.add(item);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return items;
    }

    /**
     * 查询单个商品信息
     * @param itemid 商品id
     * @return
     */
    @Override
    public Item show_item(int itemid){
        Item item=new Item();
        Connection con= null;
        PreparedStatement ps=null;
        ResultSet res=null;
        ResultSet res1=null;
        try {
            //连接数据库
            con= BaseDao.getCon();
            String sql="select * from item where itemid=?";
            ps=con.prepareStatement(sql);
            ps.setInt(1,itemid);
            res=ps.executeQuery();
            if(res.next()){
                item.setItemid(res.getInt("itemid"));
                item.setName(res.getString("name"));
                item.setDescription(res.getString("description"));
                item.setPrice(res.getDouble("price"));
                item.setStock(res.getInt("stock"));
                item.setStoreid(res.getInt("storeid"));
                item.setState(res.getInt("state"));
                sql="select imagepath from image where itemid=?";
                ps=con.prepareStatement(sql);
                ps.setInt(1,itemid);
                res1=ps.executeQuery();
                List<String> img=new ArrayList<>();
                String img1;
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
                return null;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return item;
    }

    /**
     * 商品通过审核
     * @param itemid 商品id
     * @return
     */
    @Override
    public boolean getpass(Integer itemid){
        Connection con= null;
        PreparedStatement ps=null;
        int rs=0;
        try {
            //连接数据库
            con= BaseDao.getCon();
            //书写sql语句
            String sql="update item set state=1 where itemid=?";
            ps=con.prepareStatement(sql);
            ps.setInt(1,itemid);
            rs=ps.executeUpdate();
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
