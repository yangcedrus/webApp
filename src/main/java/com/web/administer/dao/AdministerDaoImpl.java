package com.web.administer.dao;

import com.web.administer.entity.Administer;
import com.web.administer.utils.BaseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
}
