package com.niit.Controller;

import javax.servlet.ServletContext;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCartBackEnd.dao.CategoryDAO;
import com.niit.ShoppingCartBackEnd.dao.ProductDAO;
import com.niit.ShoppingCartBackEnd.dao.SupplierDAO;
import com.niit.ShoppingCartBackEnd.dto.Category;
import com.niit.ShoppingCartBackEnd.dto.Product;
import com.niit.ShoppingCartBackEnd.dto.Supplier;


@Controller
@RequestMapping(value=   { "/admin"})
public class CategoryController {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping(value="/addcategory")
	public ModelAndView addCategory(@ModelAttribute("command")Category category,BindingResult result){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "Add Category");
		mv.addObject("userClickedAddCategory", true);
		mv.addObject("category",category);
		return mv;
				
	}
	@RequestMapping(value="/addsupplier")
	public ModelAndView addSupplier(@ModelAttribute("command")Supplier supplier,BindingResult result){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "Add Supplier");
		mv.addObject("userClickedAddSupplier", true);
		mv.addObject("supplier",supplier);
		return mv;
				
	}
	@RequestMapping(value="/addproduct")
	public ModelAndView addProduct(@ModelAttribute("product") Product product, BindingResult result){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "Add Product Category");
		mv.addObject("userClickedAddProduct", true);
		mv.addObject("product", product);
		mv.addObject("userClickedAddProductCategory", true);
	
		return mv;
				
	}
	
	@RequestMapping(value="/viewcategory")
	public ModelAndView viewCategory(){
		ModelAndView mv=new ModelAndView("Page");
	   mv.addObject("title", "View Category");
		Category category =null;
		mv.addObject("categories",categoryDAO.list());
		mv.addObject("userClickedViewCategory", true);
		return mv;
				
	}
	
	@RequestMapping(value="/viewsupplier")
	public ModelAndView viewSupplier(){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "View Supplier");
		Supplier supplier =null;
		mv.addObject("suppliers",supplierDAO.list());
		mv.addObject("userClickedViewSupplier", true);
		return mv;
				
	}
	@RequestMapping(value="/viewproduct")
	public ModelAndView viewProduct(){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "View Product");
		Product product=null;
		mv.addObject("products",productDAO.list());
		mv.addObject("userClickedViewProduct", true);
		return mv;
				
	}
	
	
	
	
	
	
	@RequestMapping(value="/savecategory")
	public ModelAndView saveCategory(@ModelAttribute("category") Category category, BindingResult result){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "save Category");
		if(category.getId()==0)
		{
		boolean b=categoryDAO.add(category);
		if(b) mv.addObject("Usermsg","category added");
		else mv.addObject("Usermsg","category not added");
	}
	else
	{
		boolean b=categoryDAO.update(category);
		if(b) mv.addObject("Usermsg","Category  Has Been Updated");
		else mv.addObject("Usermsg","category not updated");
		
		
	
	}
		mv.addObject("userClickedViewCategory", true);
		return mv;
	
}
	@RequestMapping(value="/savesupplier")
	public ModelAndView saveSupplier(@ModelAttribute("supplier") Supplier supplier, BindingResult result){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "save Supplier");
		if(supplier.getId()==0)
		{
			boolean b=supplierDAO.add(supplier);
			if(b) mv.addObject("Usermsg","Supplier added");
			else mv.addObject("Usermsg","Supplier not added");
		}
		else
		{
		boolean b=supplierDAO.update(supplier);
		if(b) mv.addObject("Usermsg","Supplier Has Been Updated");
		else mv.addObject("Usermsg","supplier not added");
		}
		mv.addObject("userClickedViewSupplier", true);
		return mv;
	
}
	
	
	@Autowired
	ServletContext req;
	@Autowired
	private HttpServletRequest request;
	
	
	
	@RequestMapping(value="/saveproduct")
	public ModelAndView saveProduct(@ModelAttribute("product") Product product, BindingResult result){
		System.out.println("calling method!");
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "save Product");
		
		String p=req.getRealPath("/");
	    String path=product.getFilePath(p, req.getContextPath());
	    System.out.println(product.getPimage());
		
	    if(product.getId()==0)
	    {
	
		boolean b=productDAO.add(product);
		if(b) mv.addObject("Usermsg","product added");
		else mv.addObject("Usermsg","product not added");
	    }
	    else
	    {
	    	boolean b=productDAO.update(product);
	    	if(b) mv.addObject("Usermsg","product added");
			else mv.addObject("Usermsg","product not added");
	    	
	    }
		
		mv.addObject("userClickedViewProduct", true);
		return mv;
	
}

	
	
	@RequestMapping("/categoryDelete/{id}")
	
	public ModelAndView deleteCate(@PathVariable("id") int id)
	{
		ModelAndView mv=new ModelAndView("Page");
		Category category =null;
		category=categoryDAO.get(id);
		boolean b=categoryDAO.delete(category);
		if(b) mv.addObject("Usermsg","category added");
		else mv.addObject("Usermsg","category not added");
		
		mv.addObject("userClickedViewCategory", true);
		return mv;

				
	}
@RequestMapping("/supplierDelete/{id}")
	
	public ModelAndView deleteSupp(@PathVariable("id") int id)
	{
		ModelAndView mv=new ModelAndView("Page");
		Supplier supplier =null;
		supplier=supplierDAO.get(id);
		boolean b=supplierDAO.delete(supplier);
		if(b) mv.addObject("Usermsg","supplier added");
		else mv.addObject("Usermsg","supplier not added");
		
		mv.addObject("userClickedViewSupplier", true);
		return mv;

				
	}
@RequestMapping("/productDelete/{id}")

public ModelAndView productCate(@PathVariable("id") int id)
{
	ModelAndView mv=new ModelAndView("Page");
	Product product =null;
	product=productDAO.get(id);
	boolean b=productDAO.delete(product);
	if(b) mv.addObject("Usermsg","product added");
	else mv.addObject("Usermsg","product not added");
	
	mv.addObject("userClickedViewProduct", true);
	return mv;

			
}

	
@RequestMapping("/categoryEdit/{id}")
public ModelAndView editCate(@PathVariable("id") int id)
	{
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title","save Category");
		mv.addObject("category",categoryDAO.get(id));
		mv.addObject("userClickedAddCategory", true);
		return mv;

				
	}
@RequestMapping("/supplierEdit/{id}")

public ModelAndView editSupp(@PathVariable("id") int id)
{
	ModelAndView mv=new ModelAndView("Page");
	mv.addObject("title","save Supplier");
	mv.addObject("supplier",supplierDAO.get(id));
	mv.addObject("userClickedAddSupplier", true);
	return mv;

			
}
@RequestMapping("/productEdit/{id}")

public ModelAndView editProd(@PathVariable("id") int id)
{
	ModelAndView mv=new ModelAndView("Page");
	mv.addObject("title","save Product");
	mv.addObject("product",productDAO.get(id));
	mv.addObject("userClickedAddProductCategory", true);
	return mv;

			
}


}
