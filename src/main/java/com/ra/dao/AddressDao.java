package com.ra.dao;

import java.util.List;

import com.ra.pojo.Address;

public interface AddressDao {
	void insertAddress(Address address);
	void updateAddress(Address address);
	void deleteAddress(String addressID);
	List<Address> allAddressList();
	List<Address> findAddressByName(String addressName);
	Address findOneAddress(String addressID);
}
