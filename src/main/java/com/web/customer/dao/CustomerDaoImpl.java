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

    @Override
    public int register(Customer customer) {
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        return 0;
    }
}
