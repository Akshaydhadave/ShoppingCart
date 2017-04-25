package com.niit.ShoppingCartBackEnd.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackEnd.dao.ProductDAO;
import com.niit.ShoppingCartBackEnd.dto.Product;




public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static ProductDAO productDAO;
	
	private Product product;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCartBackEnd");
		context.refresh();
		
		productDAO = (ProductDAO) context.getBean("productDAO");
		
	}
	
 /*@Test
	public void testAddCategory()
	{
		category =new Category();
		
		category.setName("Samsung");
		category.setDescription("This is some desc for Samsung");
		//category.setImageURL("CAT_1.png");
		
		assertEquals("Successfully added a category inside the table",true,categoryDAO.add(category));
		
		
	}
	*/
	/*@Test
	public void testGetCategory() {
		
		
		category = categoryDAO.get(1);
		
		assertEquals("Successfully fetched a category inside the table","Samsung",category.getName());
		
	}*/
		
	/*	@Test
		public void testUpdateCategory() {
		
		
			category = categoryDAO.get(1);
			
			category.setName("SAMSUNG");
		
			assertEquals("Successfully updated a category in the table",true,categoryDAO.update(category));
		
		}
	*/
	
	/*@Test
	public void testDeleteCategory() {
	
	
		category = categoryDAO.get(1);
		assertEquals("Successfully deleted a category in the table",true,categoryDAO.delete(category));
	
	}*/
	
	/* @Test
	public void testListCategory() {
	
		assertEquals("Successfully fetched the list of a categories from the table",1,categoryDAO.list().size());
	
	} */
	
	@Test
	public void testCRUDCategory() {
		//add operation
        product =new Product();
		
		product.setName("Macintosh");
		product.setDescription("This is some desc for Macintosh");
		product.setId(12);
		product.setPrice(15000);
		product.setPimage("srt.jpg");
		
		
		assertEquals("Successfully added a category inside the table",true,productDAO.add(product));
		product =new Product();
		
		
		product.setName("Alienware");
		product.setDescription("This is some desc for alienware");
		
		
		
		assertEquals("Successfully added a category inside the table",true,productDAO.add(product));
		
		//fetchaing and updating
		product = productDAO.get(2);
		
		product.setName("OS-X");
	
		assertEquals("Successfully updated a category in the table",true,productDAO.update(product));
		
		//delete the category
		product = productDAO.get(2);
		assertEquals("Successfully deleted a category in the table",true,productDAO.delete(product));
		
		//fetching the list
		assertEquals("Successfully fetched the list of a categories from the table",1,productDAO.list().size());
		
	}
	
}

