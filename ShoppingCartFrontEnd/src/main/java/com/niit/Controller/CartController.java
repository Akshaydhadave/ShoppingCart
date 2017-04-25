package com.niit.Controller;

	

	import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCartBackEnd.dao.CartDAO;
import com.niit.ShoppingCartBackEnd.dao.CartItemDAO;
import com.niit.ShoppingCartBackEnd.dao.ProductDAO;
import com.niit.ShoppingCartBackEnd.dao.UserDAO;
import com.niit.ShoppingCartBackEnd.dto.Cart;
import com.niit.ShoppingCartBackEnd.dto.CartItem;
import com.niit.ShoppingCartBackEnd.dto.Product;
import com.niit.ShoppingCartBackEnd.dto.UserTable;
	@Controller
	@RequestMapping(value = { "/user" })
	public class CartController {

		@Autowired
		private HttpSession session;

		@Autowired
		private ProductDAO productDAO;
		
		@Autowired
		private UserDAO userDAO;
		
		@Autowired
		private CartDAO cartDAO;
		
		@Autowired
		private CartItemDAO cartItemDAO;
		
		@RequestMapping("/addToCart/{id}")
		public ModelAndView addToCart(@PathVariable("id") int id, Principal principal)
		{
			ModelAndView mv = new ModelAndView("Page");
			
			UserTable user = userDAO.getUserByEmail(principal.getName());
			
			Cart cart = user.getCart();
			Product product = productDAO.get(id);
			// cart setup
			int items = cart.getItems();
			items++;
			cart.setItems(items);
			
			long cost = cart.getTotalcost();
			cost += product.getPrice();
			cart.setTotalcost(cost);
			
			boolean b= cartDAO.update(cart);
			if(b) System.out.println("cart updated");
			else System.out.println("Cart not updated");
			
			//  cartitems setup
			CartItem cartItem = new CartItem();
			cartItem.setProduct(product);
			cartItem.setUid(user.getUid());
			cartItem.setIprice(product.getPrice());
			cartItem.setIquantity(1);
			cartItem.setItotal(product.getPrice());
			cartItem.setOid(0);
			
			boolean c = cartItemDAO.add(cartItem);
			if(c) System.out.println("Cartitem added");
			else System.out.println("cart item not added");
			
			System.out.println("Product added to the cart");
			
			mv.addObject("products",productDAO.list());
			
			mv.addObject("userClickedHome", true);
			return mv;
		}
		
		@RequestMapping("/removeCartItem/{ciid}")
		public ModelAndView removeCartItem(@PathVariable("ciid") int ctid, Principal principal) {
			
			ModelAndView mv = new ModelAndView("Page");
			UserTable user = userDAO.getUserByEmail(principal.getName());
			
			Cart cart = user.getCart();
			CartItem cartitem = cartItemDAO.get(ctid);
			int qu = cartitem.getIquantity();
			int cartq = cart.getItems() - qu;
			cart.setItems(cartq);
			
			long tcost = cartitem.getItotal();
			long cartt = cart.getTotalcost() - tcost;
			cart.setTotalcost(cartt);
			
			boolean b = cartItemDAO.delete(cartitem);
			if(b) System.out.println("cartitem deleted");
			else System.out.println("cartitem not deleted");
			
			boolean c = cartDAO.update(cart);
			if(c) System.out.println("Cart updated");
			else System.out.println("cart not updated");
			
			mv.addObject("userClickedMyCart",true);
			return mv;
		}
	}


