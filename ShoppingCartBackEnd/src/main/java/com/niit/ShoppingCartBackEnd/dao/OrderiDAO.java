package com.niit.ShoppingCartBackEnd.dao;

import java.util.List;

import com.niit.ShoppingCartBackEnd.dto.Orderitem;

public interface OrderiDAO {




	Orderitem get(int id);

	List<Orderitem> list();

	boolean add(Orderitem orderitem);

	boolean update(Orderitem orderitem);

	boolean delete(Orderitem orderitem);

	

}
