package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("account")
public class AccountLayoutController {
	@RequestMapping("login/success")
	public String handleLoginSuccess() {
		return "UserLayout/index";
	}
}
