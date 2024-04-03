package com.poly.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.Enum.Status_Order;
import com.poly.dao.AccountDAO;
import com.poly.dao.CustomerDAO;
import com.poly.dao.MenuDao;
import com.poly.dao.OrderDAO;
import com.poly.dao.TableDAO;
import com.poly.entity.Account;
import com.poly.entity.Customer;
import com.poly.entity.Menu;
import com.poly.entity.Table_Order;
import com.poly.entity.Order;

import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/user")
public class UserController {
	List<Menu> ls = new ArrayList();
	int i = 0;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	CustomerDAO customerdao;
	@Autowired
	MenuDao menudao;
	@Autowired
	TableDAO tabledao;
	@Autowired
	OrderDAO orderdao;
	BCryptPasswordEncoder passB = new BCryptPasswordEncoder();

	@RequestMapping("/account/info/{id}")
	public String UserInfo(@PathVariable("id") String id,Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Account account = accountdao.findByUsername(String.valueOf(authentication.getName()), 1);
		model.addAttribute("user",account);
		Customer customer = customerdao.findCustomerByID(id);
		System.out.println(customer.getEmail());
		model.addAttribute("customer",customer);
		model.addAttribute("pageall","ifuser.jsp");
		return "UserLayout/index";
	}
	
	@GetMapping("/account/changepass/{username}")
	public String ChangePassLayout(@PathVariable("username") String id,Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			 Account account = accountdao.findByUsername(String.valueOf(authentication.getName()), 1);
			 model.addAttribute("user",account);
		model.addAttribute("pageall","change_pass.jsp");
		return "UserLayout/index";
	}	
	@PostMapping("/account/repass/{username}")
	public String ChangePass(@PathVariable("username") String username,Model model,@RequestParam(name = "password") String pass, @RequestParam(name ="repass") String repass) {
		Account account = accountdao.findByUsername(username,1);
		if(!pass.equals(repass)) {
			System.out.println("mật khẩu đang không trùng với mục nhập lại mật khẩu");
		}else if(pass.equals(account.getPassword())) {
			System.out.println("mật khẩu mới không được trùng với mật khẩu cũ");
		}else {
			account.setPassword(passB.encode(pass));
			accountdao.save(account);
			model.addAttribute("error", "\r\n"
					+ "	<br><div class=\"alert alert-success\" role=\"alert\">\r\n"
					+ "  Bạn vừa đổi mật khẩu thành công vui lòng đăng nhập lại!\r\n"
					+ "</div>");
		}
		return "AccountLayout/login";
	}
	
	
	@RequestMapping("/takebooking/{id}")
	public String TakeBooking(Model model,@PathVariable("id") String id) {
		if(id.isEmpty()) {
			return "redirect:/user/login";
		}else {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			Account account = accountdao.findByUsername(String.valueOf(authentication.getName()), 1);
			model.addAttribute("user",account);
			Customer customer = customerdao.findCustomerByID(id);
			System.out.println(customer.getEmail());
			model.addAttribute("customer",customer);
			model.addAttribute("pageall","addBooking.jsp");
			return "UserLayout/index";
		}
		
	}
	@ModelAttribute("myObjectList")
    public List<Menu> showForm() {
        List<Menu> myObjectList = menudao.findAll();// Get your list of objects from somewhere  
        return myObjectList;
    }
	 
	
	
	@ModelAttribute("myObjectList")
    public List<Table_Order> showFormm() {
        List<Table_Order> myObjectListt = tabledao.findAll();// Get your list of objects from somewhere  
        return myObjectListt;
    }
	
	@ModelAttribute("myObjectList")
    public List<Menu> showForm1() {
        List<Menu> myObjectList = menudao.findAll();// Get your list of objects from somewhere  
        return myObjectList;
    }
	
	@RequestMapping("/account/order/{id}")
	public String Order(@PathVariable("id") String id,Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		 Account account = accountdao.findByUsername(String.valueOf(authentication.getName()), 1);
		 model.addAttribute("user",account);
		Customer customer = customerdao.findCustomerByID(id);
		System.out.println(customer.getEmail());
		model.addAttribute("customer",customer);
		model.addAttribute("pageall","booking.jsp");
		return "UserLayout/index";
	}
	
	@PostMapping("/payedCheck/{id}")
	public String addOrder(@PathVariable("id") String id, Model model,@RequestParam(name = "timein") LocalDate datein,@RequestParam(name = "timeout") LocalDate dateout) {
		List<Order> ls = orderdao.findAll();
		Order or = new com.poly.entity.Order();
		or.setId(String.valueOf("NV"+ls.size()));
		or.setCreate_Date(LocalDate.now());
		or.setTimein(LocalDate.now());
		or.setTimeout(LocalDate.now());
		or.setCustomer(customerdao.findCustomerByID(id));
		or.setDescription(null);
		or.setStatus(Status_Order.Confirm);
		or.setTable(tabledao.findByName(null));
		return "redirect:/user/layout";
	}
	
//	@PostMapping("/addFood/{id}")
//	public String addFood(@PathVariable("id") String id, Model model, RedirectAttributes redirectAttributes) {
//	    
//	    boolean exists = ls.stream().anyMatch(mn -> mn.getId().equals(menu.getId()));
//
//	    if (!exists) {
//	        ls.add(menu);
//	        i = 1;
//	    } else {
//	        i = i + 1;
//	    }
//
//	    System.out.println(i);
//	    model.addAttribute("countOfFood", i);
//	    model.addAttribute("ListFood", ls);
//
//	    // Thực hiện redirect trực tiếp tới trang hiện tại để không làm mới trang
//	    redirectAttributes.addFlashAttribute("countOfFood", i);
//	    redirectAttributes.addFlashAttribute("ListFood", ls);
//
//	    return "redirect:/user/layout";
//	}
//	
//	
//	
//	@RequestMapping("/request/{id}")
//	public void RequestOrder(@PathVariable("id") String id,Model model) {
//		
//	}
}
