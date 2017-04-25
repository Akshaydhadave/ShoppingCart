package com.niit.ShoppingCartBackEnd.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCartBackEnd.dao.SupplierDAO;
import com.niit.ShoppingCartBackEnd.dto.Supplier;




public class SupplierTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static SupplierDAO supplierDAO;
	
	private Supplier supplier;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCartBackEnd");
		context.refresh();
		
		supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
		
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
	public void testCRUDSupplier() {
		//add operation
		supplier =new Supplier();
		
		supplier.setName("Macintosh");
		supplier.setDescription("This is some desc for Macintosh");
		
		
		assertEquals("Successfully added a category inside the table",true,supplierDAO.add(supplier));
		supplier =new Supplier();
		
		supplier.setName("Alienware");
		supplier.setDescription("This is some desc for alienware");
		
		
		assertEquals("Successfully added a category inside the table",true,supplierDAO.add(supplier));
		
		//fetchaing and updating
		supplier = supplierDAO.get(2);
		
		supplier.setName("OS-X");
	
		assertEquals("Successfully updated a category in the table",true,supplierDAO.update(supplier));
		
		//delete the category
		supplier = supplierDAO.get(2);
		assertEquals("Successfully deleted a category in the table",true,supplierDAO.delete(supplier));
		
		//fetching the list
		assertEquals("Successfully fetched the list of a categories from the table",1,supplierDAO.list().size());
		
	}
	
}

