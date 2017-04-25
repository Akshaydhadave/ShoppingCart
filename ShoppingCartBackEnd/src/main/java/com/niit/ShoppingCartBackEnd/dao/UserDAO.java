package com.niit.ShoppingCartBackEnd.dao;

import java.util.List;

import com.niit.ShoppingCartBackEnd.dto.UserTable;

public interface UserDAO {

	UserTable get(int id);
	List<UserTable> list();
	boolean add(UserTable user);
	boolean update(UserTable user);
	boolean delete(UserTable user);
	UserTable getUserByEmail(String email);
	UserTable valid(String email, String pw);
}