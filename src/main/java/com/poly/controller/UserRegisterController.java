package com.poly.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.Enum.Role_Account;
import com.poly.Enum.Status_Account;
import com.poly.Enum.Status_Staff;
import com.poly.dao.AccountDAO;
import com.poly.dao.CustomerDAO;
import com.poly.entity.Account;
import com.poly.entity.Customer;
import com.poly.entity.Role;
import com.poly.encryption.*;

@Controller
@RequestMapping("/user")
public class UserRegisterController {
	@Autowired
	CustomerDAO customerdao;
	@Autowired
	AccountDAO accountdao;
	Encrypt encrypt = new Encrypt();
	List<Account> listAccount = new ArrayList<Account>();
	
	BCryptPasswordEncoder pass = new BCryptPasswordEncoder();
	@GetMapping("/signup")
	public String layoutUsser() {
		return "AdminLayout/pages-register";
	}
	@PostMapping("/signup")
	public String ReturnCreateCustomer(@RequestParam(name = "id") String id,
			@RequestParam(name = "firstname") String firstname,
			@RequestParam(name = "lastname") String lastname,
			@RequestParam(name = "email") String email,
			@RequestParam(name = "phone") String phonenumber,
			@RequestParam(name = "username") String username,
			@RequestParam(name = "password") String password,
			@RequestParam(name = "birthday") String birthhday,
			Model model) {
		listAccount=accountdao.findAll();
		String uri = "pages-register";
		Customer customer  = new Customer();
		customer.setId(id);
		customer.setFirstname(firstname);
		customer.setLastname(lastname);
		customer.setEmail(email);
		customer.setPhonenumber(phonenumber);
		customer.setBirthday(LocalDate.parse(birthhday));
		customer.setStatus(Status_Staff.ACTIVE);
		
		customerdao.save(customer);
	if(generateAccount(customer, username, password)) {
				uri = "index";
			}else {
				model.addAttribute("alert","<br>\r\n"
						+ "	<br><div class=\"alert alert-danger\" role=\"alert\">\r\n"
						+ "  Hiện tài khoản đã tồn tại!\r\n"
						+ "</div>");
				uri = "pages-register";
			}
	
		
		return "AdminLayout/"+ uri;
	}
	
	public boolean generateAccount(Customer customer,String username,String password){
		boolean ret = false;
		int maxSize = listAccount.size();
		if(checkUsernameEqual(username)) {
			ret = false;
		}else {
			Account account = new Account();
			account.setId(String.valueOf(maxSize));
			account.setUsername(username);
			account.setPassword(pass.encode(password));
			account.setCustomer(customer);
			account.setStaff(null);
			account.setRole(new Role(1,"USER"));
			account.setStatus(Status_Account.INACTIVE);
			accountdao.save(account);
			ret = true;
		}
		return ret;
	}
	
	public boolean checkUsernameEqual(String name) {
		boolean ret = false;
		Account account = accountdao.findNameAccount(name,1);
		if(account!=null) {
			ret = true;
		}else {
			ret = false;
		}
		return ret;
	}
	
}
