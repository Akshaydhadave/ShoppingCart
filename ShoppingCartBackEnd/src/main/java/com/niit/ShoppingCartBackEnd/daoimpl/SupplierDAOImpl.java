package com.niit.ShoppingCartBackEnd.daoimpl;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCartBackEnd.dao.SupplierDAO;
import com.niit.ShoppingCartBackEnd.dto.Supplier;




@Repository("supplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public List<Supplier> list() {
	
		String selectActiveSupplier = "FROM Supplier WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveSupplier);
		
		query.setParameter("active", true);
		
		return query.getResultList();
	}

	/*
	 *  Getting single category based on id
	 */
	public Supplier get(int id) {
		
		
		return sessionFactory.getCurrentSession().get(Supplier.class, Integer.valueOf(id));
	}

	public boolean add(Supplier supplier) {
		
		try {
			// add the category to the database table
			sessionFactory.getCurrentSession().save(supplier);
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
	public boolean update(Supplier supplier) {
		try {
		
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		
	}


	public boolean delete(Supplier supplier) {
		
		supplier.setActive(false);
		 
		try {
	
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
