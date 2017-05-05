package com.niit.ShoppingCartBackEnd.dao;

import java.util.List;

import com.niit.ShoppingCartBackEnd.dto.Address;

public interface AddressDAO {
	
	
	Address get(int id);
	List<Address> list();
	boolean add(Address address);
	boolean update(Address address);
	boolean delete(Address address);
	
	List<Address> getByAid(int id);
}