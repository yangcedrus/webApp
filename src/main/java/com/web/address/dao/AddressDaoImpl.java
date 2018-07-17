package com.web.address.dao;

import com.web.address.entity.Address;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.web.administer.utils.BaseDao.getCon;

public class AddressDaoImpl implements AddressDao {
    @Override
    public List<Address> GetAddress(int customerid) {
        Connection con = null;
        Statement stmt = null;
        ResultSet res = null;
        Address address;
        List<Address> addresslist = new ArrayList<Address>();
        try {
            con = getCon();
            stmt = con.createStatement();
            String sql = "select * from address where customerid='" + customerid + "'";
            res = stmt.executeQuery(sql);
            while (res.next()) {
                address = new Address();
                address.setAddressid(res.getInt("addressid"));
                address.setCustomerid(customerid);
                address.setAddress(res.getString("address"));
                addresslist.add(address);
            }
            if (addresslist.size() <= 0) {
                addresslist = null;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return addresslist;
    }

    public boolean SaveAddrss(int customerid, String address) {
        Connection con = null;
        Statement stmt = null;
        int res = 0;
        PreparedStatement ps = null;
        try {
            con = getCon();
            stmt = con.createStatement();
            String sql = "insert into address(customerid,address) values('" + customerid + "','" + address + "')";
//            ps=con.prepareStatement(sql);
//            ps.setInt(1,customerid);
//            ps.setString(2,address);
            //res=ps.executeUpdate(sql);
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

    public boolean ModiAddress(int addressid, String address) {
        Connection con = null;
        Statement stmt = null;
        int res = 0;
        try {
            con = getCon();
            stmt = con.createStatement();
            String sql = "update address set address='" + address + "' where addressid='" + addressid + "'";
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

    public boolean DeleAddress(int addressid) {
        Connection con = null;
        Statement stmt = null;
        int res = 0;
        PreparedStatement ps = null;
        try {
            con = getCon();
            stmt = con.createStatement();
            String sql = "delete from address where addressid='" + addressid + "'";
            res = stmt.executeUpdate(sql);
            if (res > 0) {
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
