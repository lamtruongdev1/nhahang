package com.poly.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Enum.Status_Account;
import com.poly.dao.StaffDAO;
import com.poly.entity.Account;
import com.poly.entity.Customer;
import com.poly.entity.Role;
import com.poly.service.AccountService;

@Controller
@RequestMapping("startwebadmin")
public class AdminAccountController {
	@Autowired
	AccountService sv;
	@Autowired
	StaffDAO dao;
	@GetMapping
	public String layout() {
		return "AdminCustom/settingforaaccountadmin";
	}
	@PostMapping
	public String Generate() {
		//TODO: process POST request
		System.out.println("tạo thành công");
		return "AdminCustom/settingforaaccountadmin";
	}
	
}
