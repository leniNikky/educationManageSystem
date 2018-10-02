package com.ra.seviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ra.dao.AddressDao;
import com.ra.pojo.Address;
import com.ra.service.AddressService;
@Service("AddressService")
@Transactional
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressDao addressDao;
	public void insertAddress(Address address) {
		// TODO Auto-generated method stub

	}

	public void updateAddress(Address address) {
		// TODO Auto-generated method stub

	}

	public void deleteAddress(String addressID) {
		// TODO Auto-generated method stub

	}

	public List<Address> allAddressList() {
		List<Address> alladress = addressDao.allAddressList();
		return alladress;
	}

	public List<Address> findAddressByName(String addressName) {
		List<Address> address = addressDao.findAddressByName(addressName);
		return address;
	}
	public Address findOneAddress(String addressID) {
		Address address = addressDao.findOneAddress(addressID);
		return address;
	}
}
