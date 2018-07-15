package com.web.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import com.web.administer.utils.BaseDao;
import com.web.store.entity.Store;


public class StoreDaoImpl implements StoreDao{
    /**
     *
     * @param name
     * @param psw
     * @return
     */
    public Store login(String name,String psw){
        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try{
            con=BaseDao.getCon();//1:获取数据库连接
            //2:书写sql语句
            String sql="select * from store where name=? and psw=? and state=1";
            ps=con.prepareStatement(sql);//3:预编译
            //4:设置值
            ps.setString(1,name);
            ps.setString(2,psw);
            rs=ps.executeQuery();//5:执行sql语句
            Store stores=null;
            if(rs.next()){
                stores=new Store();
                //从数据库中获取值设置到实体类的setter方法中
                stores.setStoreid(rs.getInt("storeid"));
                stores.setName(rs.getString("name"));
                stores.setPsw(rs.getString("psw"));
                stores.setPhone(rs.getString("phone"));
                stores.setDescription(rs.getString("description"));
                stores.setSex(rs.getInt("sex"));
                stores.setState(rs.getInt("state"));
                return stores;
            }else{
                return null;
            }

        } catch (SQLException e){
            //TODO Auto-generated catch block
            e.printStackTrace();
        }catch (ClassNotFoundException e){
            //TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    /**
     *
     * @param store
     * @return
     */
    @Override
    public int register(Store store) {
        Connection con=null;
        PreparedStatement ps=null;
        int flag=0;
        try{
            //连接数据库
            con=BaseDao.getCon();
            //书写sql语句
            String sql="insert into store(name,psw,phone,sex,description,state) values(?,?,?,?,?,1)";
            ps=con.prepareStatement(sql);
            //设置参数
            ps.setString(1,store.getName());
            ps.setString(2,store.getPsw());
            ps.setString(3,store.getPhone());
            ps.setInt(4,store.getSex());
            ps.setString(5,store.getDescription());
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
