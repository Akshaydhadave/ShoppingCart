package com.niit.Controller;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCartBackEnd.dao.CartDAO;
import com.niit.ShoppingCartBackEnd.dao.CategoryDAO;
import com.niit.ShoppingCartBackEnd.dao.ProductDAO;
import com.niit.ShoppingCartBackEnd.dao.UserDAO;
import com.niit.ShoppingCartBackEnd.dto.Cart;
import com.niit.ShoppingCartBackEnd.dto.Category;
import com.niit.ShoppingCartBackEnd.dto.Product;
import com.niit.ShoppingCartBackEnd.dto.UserTable;
@Controller
public class HomeController {
	
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private CartDAO cartDAO;
	

	@Autowired
	private CategoryDAO categoryDAO;
	
			@RequestMapping(value={"/","/home","/index"})
			public ModelAndView index(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "Home");
				
				mv.addObject("categories", categoryDAO.list());
				//mv.addObject("products",productDAO.list());
				mv.addObject("products",productDAO.list());
				mv.addObject("userClickedHome", true);
				return mv;
						
			}
			
			@RequestMapping(value={"/about"})
			public ModelAndView about(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "About Us");
				mv.addObject("userClickedAbout", true);
				return mv;
			}

			
			@RequestMapping(value={"/contact"})
			public ModelAndView contact(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "Contact Us");
				mv.addObject("userClickedContact", true);
				return mv;
			}

			
			
			
			@RequestMapping(value = { "/login" })
			public ModelAndView showLoginPage() {
				//log.debug("Starting of login method");
				System.out.println("clicked on login page");
				ModelAndView mv = new ModelAndView("Page");
				mv.addObject("title", "login");

				// passing the list of categories
				//mv.addObject("categories", categoryDAO.list());

				mv.addObject("userClickedLogin", true);
				//log.debug("End of login method");
				
				return mv;
			}
			
			@RequestMapping(value = "/logout", method = RequestMethod.GET)
			public ModelAndView logoutPage(HttpServletRequest request, HttpServletResponse response) {
				Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				if (auth != null) {
					new SecurityContextLogoutHandler().logout(request, response, auth);
				}
				
				ModelAndView mv=new ModelAndView("Page");
				//session.invalidate(); // session.removeAttribute("loginMessage");
				mv.addObject("title", "Home");
				
				//passing the list of categories
				//mv.addObject("categories",categoryDAO.list());
				
				//passing the list of products
						mv.addObject("products", productDAO.list());
				
				
				
				mv.addObject("isUserClickedLogout", true);
				return mv;
			}
		
			
		
			@RequestMapping("/productdetails/{id}")
			public ModelAndView productdetails(@PathVariable("id") int id)
			{
				System.out.println("Clicked on product details link");
				ModelAndView mv = new ModelAndView("/Page");
				
				Product product=productDAO.get(id);
				mv.addObject("product",product);
				
				mv.addObject("userClickedProductDetails","true");
				
				return mv;
			}
			@RequestMapping(value={"/keyboards"})
			public ModelAndView keyboards(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "Keyboards");
				mv.addObject("userClickedKeyboards", true);
				return mv;
			}
		
			@RequestMapping(value={"/Computers"})
			public ModelAndView motherboards(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "Computers");
				mv.addObject("userClickedComputers", true);
				return mv;
			}
			
			@RequestMapping(value={"/mouse"})
			public ModelAndView mouse(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "Mouse");
				mv.addObject("userClickedMouse", true);
				return mv;
			}
		
			@RequestMapping(value={"/ram"})
			public ModelAndView ram(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "RAM");
				mv.addObject("userClickedRAM", true);
				return mv;
			}
			@RequestMapping(value={"/PaymentProcess"})
			public ModelAndView paymentPro(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "Monitor");
				mv.addObject("userClickedPaymentProcess", true);
				return mv;
			}
			
			@RequestMapping(value={"/loginerror"})
			public ModelAndView loginerror(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "LoginError");
				mv.addObject("userClickedLogInError", true);
				return mv;
			}
			@RequestMapping(value={"/graphiccards"})
			public ModelAndView graphiccards(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "GraphicCards");
				mv.addObject("userClickedGraphicCrads", true);
				return mv;
			}
			@RequestMapping(value={"/fancontroller"})
			public ModelAndView fancontroller(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "FanController");
				mv.addObject("userClickedFanController", true);
				return mv;
			}
			@RequestMapping(value={"/antivirus"})
			public ModelAndView antivirus(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "AntiVirus");
				mv.addObject("userClickedAntiVirus", true);
				return mv;
			}
			@RequestMapping(value={"/laptopaccessories"})
			public ModelAndView laptopaccessories(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "Laptops Accessories");
				mv.addObject("userClickedLaptopsAccesories", true);
				return mv;
			}
			/*@RequestMapping(value={"/home"})
			public ModelAndView home(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "Itdepot");
				mv.addObject("userClickedItdepot", true);
				return mv;
			}*/
			@RequestMapping(value={"/batteriesandcharger"})
			public ModelAndView batteriesandcharger(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "BatteriesAndCharger");
				mv.addObject("userClickedBatteriesandCharger", true);
				return mv;
			}
			@RequestMapping(value={"/Account"})
			public ModelAndView Account(Principal principal){
				ModelAndView mv=new ModelAndView("Page");
				UserTable user = userDAO.getUserByEmail(principal.getName());
				mv.addObject("user",user);
				mv.addObject("title", "Account");
				mv.addObject("userClickedAccount", true);
				return mv;
			}
		
			@RequestMapping(value={"/laptops"})
			public ModelAndView laptops(){
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "Laptops");
				mv.addObject("userClickedLaptops", true);
				return mv;
			}
		
	
			@RequestMapping("/signup")
			public ModelAndView showRegistrationPage(@ModelAttribute("user") UserTable user, BindingResult result)
			{
				System.out.println("Clicked on registration link");
				ModelAndView mv=new ModelAndView("/Page");
				mv.addObject("userClickedRegister", "true");
				return mv;
			}
			

			@RequestMapping("/register")
			public ModelAndView AddUserPage(@ModelAttribute("user") @Valid UserTable user, BindingResult result)
			{
				System.out.println("AddUserPage method");
				ModelAndView mv=new ModelAndView("/Page");
				if(result.hasErrors()){
					mv.addObject("userClickedRegister", true);
					return mv;
				}
				
				Cart cart =new Cart();
				boolean x =cartDAO.add(cart);
				if(x) System.out.println("Cart added");
				else System.out.println("Cart not added");
				user.setCart(cart);
				
				boolean b=userDAO.add(user);
				if(b) mv.addObject("Usermsg","User registred successfully");
				else mv.addObject("Usermsg","User NOT registred successfully");
				
				
				mv.addObject("userClickedRegister", "true");
				return mv;
			}	
			
			@RequestMapping(value = {"/show/all/products"})
			public ModelAndView showAllProducts() {
				ModelAndView mv=new ModelAndView("Page");
				mv.addObject("title", "All Products");
				
				//passing the list of category
				mv.addObject("categories",categoryDAO.list());
				
				//Product List
				mv.addObject("products",productDAO.list());
				
				mv.addObject("userClickAllProducts",true);
				return mv;
			}
			
			@RequestMapping(value = {"/show/category/{id}/products"})
			public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
				ModelAndView mv=new ModelAndView("Page");
				
				//categoryDAO to fetch a single category
				Category category= null;
				category= categoryDAO.get(id);
				
				mv.addObject("title", category.getName());
				
				//passing the list of category
				mv.addObject("categories",categoryDAO.list());
				
				//passing the single category object
				mv.addObject("category",category);
				
				// category wiae product list
				mv.addObject("catProducts",productDAO.listActiveProductsByCategory(id));
				
				mv.addObject("userClickCategoryProducts",true);
				return mv;
			}
			
			
			
			
			 
			@RequestMapping(value="/show/{id}/product")
			public ModelAndView showSingleProduct(@PathVariable int id) throws Exception {
				ModelAndView mv=new ModelAndView("Page");
				
				Product product = productDAO.get(id);
				if(product == null) throw new Exception();
				
				//update the views
				product.setPrice(product.getPrice()+1);
				productDAO.update(product);
				//-------------------------
				
				mv.addObject("title",product.getName());
				mv.addObject("product",product);
				mv.addObject("userClickShowProduct",true);
				
				return mv;
			}
			
			
			
}			
			
		

		
		
	

