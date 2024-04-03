package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.Enum.Role_Account;
import com.poly.Enum.Status_Account;
import com.poly.dao.AccountDAO;
import com.poly.entity.Account;
import com.poly.entity.Role;
import com.poly.service.CookieService;

@Controller
@RequestMapping("/user")
public class UserLoginController {
	@Autowired
	CookieService cookieservice;
	@Autowired
	AccountDAO daoacc;
	@PostMapping("/signin")
	public String postMethodName(@RequestParam(name="username")String name, @RequestParam(name="password")String pass,Model model) {
		//TODO: process POST request
		String uri = "index";
		Account account = daoacc.findAccount(name, pass,new Role(0,"USER"));
		if(account !=null) {
			if(CheckStatus(account)) {
				account.setStatus(Status_Account.ACTIVE);
				daoacc.save(account);
				cookieservice.add(name,pass, 50000);
				uri = "index";
			}else {
				account.setStatus(Status_Account.INACTIVE);
				daoacc.save(account);
				uri = "pages-login";
			}
		}else {
			uri = "pages-login";
		}
		return "AdminLayout/"+ uri;
	
	}
	
	public Boolean CheckStatus(Account account) {
		boolean ret = false;
		if(account.getStatus().equals(Status_Account.INACTIVE)) {
			ret = true;
		}else {
			ret = false;
		}
		return ret;
	}
}
