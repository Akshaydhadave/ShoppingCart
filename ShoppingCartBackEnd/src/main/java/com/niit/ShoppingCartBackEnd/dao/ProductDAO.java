package com.niit.ShoppingCartBackEnd.dao;

import java.util.List;

import com.niit.ShoppingCartBackEnd.dto.Product;


public interface ProductDAO {
	
	
	Product get(int id);
	List<Product> list();
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);
	
	
	
	List<Product>  listActiveProductsByCategory(int categoryId);

}
