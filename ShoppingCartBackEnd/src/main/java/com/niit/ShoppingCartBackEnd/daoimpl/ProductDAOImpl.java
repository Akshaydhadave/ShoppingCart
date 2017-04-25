package com.niit.ShoppingCartBackEnd.daoimpl;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackEnd.dao.ProductDAO;
import com.niit.ShoppingCartBackEnd.dto.Product;




@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public List<Product> list() {
	
		String selectActiveProduct = "FROM Product WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProduct);
		
		query.setParameter("active", true);
		
		return query.getResultList();
	}

	/*
	 *  Getting single category based on id
	 */
	public Product get(int id) {
		
		
		return sessionFactory.getCurrentSession().get(Product.class, Integer.valueOf(id));
	}

	public boolean add(Product product) {
		
		try {
			// add the category to the database table
			sessionFactory.getCurrentSession().save(product);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		
	}




	/*
	 *  Updating a single category
	 * */
	public boolean update(Product product) {
		try {
		
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		
	}


	public boolean delete(Product product) {
		
		product.setActive(false);
		 
		try {
	
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
