package com.niit.ShoppingCartBackEnd.dao;


import java.util.List;

import com.niit.ShoppingCartBackEnd.dto.Cart;

public interface CartDAO {

	Cart get(int id);
	List<Cart> list();
	boolean add(Cart cart);
	boolean update(Cart cart);
	boolean delete(Cart cart);
	
}