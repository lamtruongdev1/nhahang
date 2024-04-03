package com.poly.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.MenuDao;
import com.poly.entity.Account;
import com.poly.entity.Menu;
import com.poly.service.CookieService;
import com.poly.service.CustomUserDetails;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/user")
public class UserLayoutController {
	@Autowired
	CookieService cookie;
	@Autowired
	SessionService session;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	MenuDao menudao;
	SecurityContextLogoutHandler logoutHandler = new SecurityContextLogoutHandler();
	
	@GetMapping
	public String LayoutUserRegister0(){
		return "AdminLayout/pages-register";
	}
	@GetMapping("layout")
	public String LayoutUser(Model model, Authentication auth){
		model.addAttribute("pageall","dashboard.jsp");
		return "UserLayout/index";
	}
	
	@GetMapping("dashboard")
	public String LayoutReUser(Model model, Authentication auth){
		
		return "redirect:/user/layout";
	}
	@ModelAttribute("user")
	public Account getAccount() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		 Account account = new Account();
			 account = accountdao.findByUsername(String.valueOf(authentication.getName()), 1);
		 return account;
	}
	@ModelAttribute("food")
	public List<Menu> ReturnTable(){
		List<Menu> ls = menudao.findAll();
		System.out.println(ls.size());
		return ls;
	}
	@GetMapping("logout")
	public String LayoutUserLogout(Authentication authentication, HttpServletRequest request, HttpServletResponse response){
		 this.logoutHandler.logout(request, response, authentication);
	     return "redirect:/user/layout";
	}
	@GetMapping("login")
	public String LayoutUserLogin(){
		return "AccountLayout/login";
	}
	
	@GetMapping("register")
	public String LayoutUserRegister(){
		return "AccountLayout/register";
	}
	
	@GetMapping("login/success")
	public String LayoutUserLoginSuccess(){
		return "UserLayout/index";
	}
	@GetMapping("/oauth2/success")
	public String LayoutUserLoginSuccess1(){
		return "UserLayout/index";
	}
	
	@RequestMapping("/login/failure")
	public String handleLoginFailure(Model model) {
		model.addAttribute("error", "\r\n"
				+ "	<br><div class=\"alert alert-danger\" role=\"alert\">\r\n"
				+ "  Username hoặc password đang không đúng!\r\n"
				+ "</div>");
		return "AccountLayout/login";
	}
}
