package com.niit.ShoppingCartBackEnd.dao;

import java.util.List;

import com.niit.ShoppingCartBackEnd.dto.Supplier;

public interface SupplierDAO {
	
	
	Supplier get(int id);
	List<Supplier> list();
	boolean add(Supplier supplier);
	boolean update(Supplier supplier);
	boolean delete(Supplier supplier);
}
