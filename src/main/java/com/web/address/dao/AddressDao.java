package com.web.address.dao;

import com.web.address.entity.Address;

import java.util.List;

public interface AddressDao {
    public List<Address> GetAddress(int cunstomerid);
    public boolean SaveAddrss(int addressid,String address);
    public boolean ModiAddress(int customerid,String address);
    public boolean DeleAddress(int addressid);
}
