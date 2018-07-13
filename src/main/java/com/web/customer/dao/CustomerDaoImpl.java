package com.web.customer.dao;

import com.web.administer.utils.BaseDao;
import com.web.customer.entity.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 22278
 * 用户接口实现类
 */
public class CustomerDaoImpl implements CustomerDao {
    /**
     *
     * @param name 用户名
     * @param psw 用户密码
     * @return 登录完成的买家信息
     */
    @Override
    public Customer login(String name, String psw) {
        Connection con= null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        Customer customer=null;
        try{
            //连接数据库
            con=BaseDao.getCon();
            //书写sql语句
            String sql="select * from customer where name=? and psw=? and state=1";
            ps=con.prepareStatement(sql);
            //设置参数
            ps.setString(1,name);
            ps.setString(2,psw);
            //执行sql语句
            rs=ps.executeQuery();
            //查看结果
            if(rs.next()){
                customer=new Customer();
                //数据库数据对应到实体中
                customer.setCustomerid(rs.getInt("customerid"));
                customer.setName(name);
                // TODO: 2018/7/12 是否要设置密码
                customer.setPsw(psw);
                customer.setSex(rs.getInt("sex"));
                customer.setPhone((rs.getString("phone")));
                // TODO: 2018/7/12 是否要设置状态
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
     * @param customer 需要注册的买家信息
     * @return 插入结果 1表示成功 0表示失败
     */
    @Override
    public int register(Customer customer) {
        Connection con=null;
        PreparedStatement ps=null;
        int flag=0;
        try{
            //连接数据库
            con=BaseDao.getCon();
            //书写sql语句
            String sql="insert into customer(name,psw,sex,phone,state) values(?,?,?,?,1)";
            ps=con.prepareStatement(sql);
            //设置参数
            ps.setString(1,customer.getName());
            ps.setString(2,customer.getPsw());
            ps.setInt(3,customer.getSex());
            ps.setString(4,customer.getPhone());
            //执行语句
            flag=ps.executeUpdate();
            //查看结果
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


}
