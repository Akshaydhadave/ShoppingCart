package com.niit.ShoppingCartBackEnd.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackEnd.dao.CartItemDAO;
import com.niit.ShoppingCartBackEnd.dto.CartItem;

public class CartItemTestCase {
private static AnnotationConfigApplicationContext context;
	
	private static CartItemDAO cartitemDAO;
	
	private CartItem cartitem;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		cartitemDAO = (CartItemDAO) context.getBean("cartitemDAO");
		
	}
	

	
	@Test
	public void testCRUDCategory() {
		//add operation
		cartitem =new CartItem();
		
		
		cartitem.setItemid(5);
		cartitem.setUid(69);
		cartitem.setIquantity(2);
		cartitem.setIprice(5000);
		cartitem.setItotal(10000);
		
		//category.setImageURL("CAT_2mac.png");
		
		assertEquals("Successfully added a cart inside the table",true,cartitemDAO.add(cartitem));
		
		cartitem =new CartItem();
		
		
		cartitem.setItemid(5);
		cartitem.setUid(70);
		cartitem.setIquantity(3);
		cartitem.setIprice(5000);
		cartitem.setItotal(15000);
		//category.setImageURL("CAT_2mac.png");
		
		assertEquals("Successfully added a cart inside the table",true,cartitemDAO.add(cartitem));
		//fetchaing and updating
		cartitem = cartitemDAO.get(2);
		
		cartitem.setIquantity(4);
	
		assertEquals("Successfully updated a cart in the table",true,cartitemDAO.update(cartitem));
		
		//delete the category
		cartitem = cartitemDAO.get(3);
		assertEquals("Successfully deleted a cart in the table",true,cartitemDAO.delete(cartitem));
		
		//fetching the list
		assertEquals("Successfully fetched the list of a cart from the table",1,cartitemDAO.list().size());
		
	}
	

}
