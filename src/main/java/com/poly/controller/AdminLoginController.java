package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.Enum.Role_Account;
import com.poly.Enum.Status_Account;
import com.poly.dao.AccountDAO;
import com.poly.dao.StaffDAO;
import com.poly.entity.Account;
import com.poly.entity.Role;
import com.poly.entity.Staff;
import com.poly.service.CookieService;
import com.poly.service.SessionService;
@Controller
@RequestMapping("/admin")
public class AdminLoginController {
	@Autowired
	CookieService cookieservice;
	@Autowired
	SessionService sessionservice;
	@Autowired
	AccountDAO daoacc;
	@Autowired
	StaffDAO staffdao;
	
	@PostMapping("/signin")
	public String postMethodName(@RequestParam(name="username")String name, @RequestParam(name="password")String pass,Model model) {
		//TODO: process POST request
		String uri = "index";
		Account account = daoacc.findAccount(name, pass, new Role(0, "ADMIN"));
		System.out.println();
		account.setStatus(Status_Account.INACTIVE);
		if(account !=null) {
			if(CheckStatus(account)) {
				account.setStatus(Status_Account.ACTIVE);
				daoacc.save(account);
				model.addAttribute("layout","pages-home.jsp");
				uri = "index";
			}else {
				model.addAttribute("alert","<br>\r\n"
						+ "	<br><div class=\"alert alert-danger\" role=\"alert\">\r\n"
						+ " Tài Khoản Đang Được Đăng Nhập!\r\n"
						+ "</div>");
				uri = "pages-login";
			}
			sessionservice.setAttribute("account", account);
		}else {
			model.addAttribute("alert","<br>\r\n"
					+ "	<br><div class=\"alert alert-danger\" role=\"alert\">\r\n"
					+ "  Sai tài khoản hoặc mật khẩu!\r\n"
					+ "</div>");
			
			uri = "pages-login";
		}
		cookieservice.add("account",String.valueOf(account.getStaff().getId()),50000000);
		Staff staff = staffdao.findStaffByID(cookieservice.getValue("account"));
		System.out.println(staff.getId());
		model.addAttribute("staff",staff);
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
