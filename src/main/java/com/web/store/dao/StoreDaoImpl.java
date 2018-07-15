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
                stores.setState(rs.getString("state"));
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
    public boolean register(Store store) {
        String sql = "insert into user values(0,?,?,?,?)";
        List<Object> list = new ArrayList<Object>();
        list.add(store.getName());
        list.add(store.getPsw());
        list.add(store.getPhone());
        list.add(store.getSex());
        list.add(store.getDescription());

        boolean flag = BaseDao.addUpdateDelete(sql,list.toArray());
        if (flag) {
            return true;
        } else {
            return false;
        }
    }
}
