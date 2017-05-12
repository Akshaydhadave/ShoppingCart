package com.niit.ShoppingCartBackEnd.dao;




import java.util.List;

import com.niit.ShoppingCartBackEnd.dto.Order;








public interface OrderDAO {




	Order get(int id);

	List<Order> list();

	boolean add(Order order);

	boolean update(Order order);

	boolean delete(Order order);

	

}