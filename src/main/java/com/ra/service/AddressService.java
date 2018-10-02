package com.ra.service;

import java.util.List;

import com.ra.pojo.Address;

public interface AddressService {
	public void insertAddress(Address address);
	public void updateAddress(Address address);
	public void deleteAddress(String addressID);
	public List<Address> allAddressList();
	public List<Address> findAddressByName(String addressName);
	public Address findOneAddress(String addressID);
}
