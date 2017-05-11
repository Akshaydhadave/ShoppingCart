package com.niit.Controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCartBackEnd.dao.CartItemDAO;
import com.niit.ShoppingCartBackEnd.dao.ProductDAO;
import com.niit.ShoppingCartBackEnd.dao.UserDAO;
import com.niit.ShoppingCartBackEnd.dto.Cart;
import com.niit.ShoppingCartBackEnd.dto.CartItem;
import com.niit.ShoppingCartBackEnd.dto.UserTable;

@Controller
public class UserController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CartItemDAO cartItemDAO;
	
	@Autowired
	private HttpSession session;

	
	@RequestMapping(value={"/mycart"})
	public ModelAndView myCart(Principal principal){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "my Cart");
		
		UserTable user = userDAO.getUserByEmail(principal.getName());
		// getting cart
		Cart cart =user.getCart();
		
		//getting cartitem
		List<CartItem> cilist = cartItemDAO.getByUserid(user.getUid());
		
		mv.addObject("cilist",cilist);
		mv.addObject("user",user);
		mv.addObject("cartamt",user.getCart().getItems());
		mv.addObject("cartdata",user.getCart());
		mv.addObject("userClickedMyCart", true);
		//mv.addObject("products",productDAO.list());
		return mv;
				
	}
	
	@RequestMapping(value={"/PersonalDetails"})
	public ModelAndView personaldetails(Principal principal){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "personal details");
		
		UserTable user = userDAO.getUserByEmail(principal.getName());
		// getting cart
		Cart cart =user.getCart();
		
		//getting cartitem
		List<CartItem> cilist = cartItemDAO.getByUserid(user.getUid());
		
		mv.addObject("cilist",cilist);
		mv.addObject("user",user);
		mv.addObject("cartamt",user.getCart().getItems());
		mv.addObject("cartdata",user.getCart());
		mv.addObject("userClickedPersonalDetails", true);
		//mv.addObject("products",productDAO.list());
		return mv;
				
	}
	
	@RequestMapping(value={"/user/updatePersonalInfo"})
	public ModelAndView updateInfo(@ModelAttribute("user") UserTable user , BindingResult result, Principal principal) {
		ModelAndView mv = new ModelAndView("Page");
		
		UserTable user1 = userDAO.getUserByEmail(principal.getName());
		
		boolean b = userDAO.update(user);
		if(b) System.out.println("User updated");
		else System.out.println("User not updated");

		mv.addObject("userClickedPersonalDetails",true);
		return mv;
	}
	
	
	@RequestMapping(value={"/ChangePassword"})
	public ModelAndView changePassword(Principal principal){
		ModelAndView mv=new ModelAndView("Page");
		mv.addObject("title", "change Password");
		
		UserTable user = userDAO.getUserByEmail(principal.getName());
		// getting cart
		Cart cart =user.getCart();
		
		//getting cartitem
		List<CartItem> cilist = cartItemDAO.getByUserid(user.getUid());
		
		mv.addObject("cilist",cilist);
		mv.addObject("user",user);
		mv.addObject("cartamt",user.getCart().getItems());
		mv.addObject("cartdata",user.getCart());
		mv.addObject("userClickedChangePassword", true);
		return mv;
				
	}
	
	@RequestMapping(value={"/user/updatepassword"})
	public ModelAndView updatepassword(@ModelAttribute("user") UserTable user , BindingResult result, Principal principal) {
		ModelAndView mv = new ModelAndView("Page");
		String cpw = user.getCpw();
		String np2 = user.getNpw2();
		String newpw = user.getNPw1();
		String pw = user.getPw();
		
		System.out.println("cpw"+cpw);
		System.out.println("np2"+np2);
		System.out.println("np1"+newpw);
		
		if(pw.equals(cpw)) {
			if(np2.equals(newpw)) {
				
				System.out.println("PW:"+newpw);
				
				user.setPw(newpw);
				System.out.println("The pw"+user.getPw());
				boolean b = userDAO.update(user);
				if(b) System.out.println("User password updated");
				else System.out.println("User password not updated");
				
			}
		}
		else {
			System.out.println("Invalid password");
		}
		
		UserTable user1 = userDAO.getUserByEmail(principal.getName());
		
		mv.addObject("user", user1);
		mv.addObject("userClickedChangePassword",true);
		return mv;
	}
}
	
	
