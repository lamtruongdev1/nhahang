package com.poly.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.resource.NoResourceFoundException;

import com.poly.Enum.Role_Account;
import com.poly.Enum.Status_Account;
import com.poly.Enum.Status_Staff;
import com.poly.Enum.Status_Table;
import com.poly.Enum.Type_Food;
import com.poly.Enum.Type_Table;
import com.poly.dao.AccountDAO;
import com.poly.dao.CustomerDAO;
import com.poly.dao.MenuDao;
import com.poly.dao.StaffDAO;
import com.poly.dao.TableDAO;
import com.poly.entity.Account;
import com.poly.entity.Customer;
import com.poly.entity.Menu;
import com.poly.entity.Staff;
import com.poly.entity.Table_Order;
import com.poly.service.CookieService;
import com.poly.service.StaffService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminLayoutController {
	@Autowired
	StaffService staffService;
	private static Logger logger = Logger.getLogger(StaffController.class);
	@Autowired
	CookieService cookieservice;
	@Autowired
	StaffDAO staffdao;
	@Autowired
	CustomerDAO customerdao;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	MenuDao dao;
	@Autowired
	TableDAO tbldao;
	List<Menu> ls;
	List<Staff> ls1;
	@GetMapping
	public String returnLayout(Model model) {
		String uri = "AdminLayout/pages-login";
//		if(CheckCookies()) {
//			model.addAttribute("layout","pages-home.jsp");
//			uri = "AdminLayout/index";
//		}
		model.addAttribute("layout","pages-home.jsp");
		
		return uri;
	}
	
	public boolean CheckCookies() {
		boolean ret = false;
		if(cookieservice!=null) {
			ret = true;
		}else {
			ret = false;
		}
		return ret;
	}
	
	@GetMapping("/signout")
	public String returnLayoutLg() {
		cookieservice.remove("account");
		return "redirect:/admin";
	}
	
	@GetMapping("/form")
	public String returnLayoutRRegis() {
		return "AdminLayout/pages-register";
	}
	
	
	@GetMapping("adminprofile/{id}")
	public String getAdminINF(@PathVariable String id, Model model) {
		Staff staff = staffdao.findStaffByID(id);
		System.out.println(staff.getId());
		model.addAttribute("staff",staff);
		model.addAttribute("layout","users-profile.jsp");
		return "AdminLayout/index";
	}
	
	@GetMapping("/contact")
	public String returnContact(Model model) {
		model.addAttribute("layout","pages-contact.jsp");
		return "AdminLayout/index";
	}
	
	
	@ModelAttribute("page")
	public Page<Staff> AllstaffFill(Model model, @RequestParam("p") Optional<Integer> p) throws NoResourceFoundException {

		
		System.out.println(logger.getName());
		logger.info("access Admin/staff");

		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Staff> page = staffService.findStaff(pageable,Status_Staff.ACTIVE);
		return page;
	}
	
	
	@ModelAttribute("types")
	public Type_Food[] populateTypes() {
		return Type_Food.values();
	}

	public String ConcatIDMMenu(List<Menu> ls) {
		String maMN = "";
		if(ls.size() <10) {
			maMN = String.valueOf("MN0"+ls.size());
		}else {
			maMN = String.valueOf("MN"+ls.size());
		}
		return maMN;
	}
	
	@GetMapping("/tblayout")
	public String returnTblayout(Model model) {
		Table_Order item = new Table_Order();
		model.addAttribute("tabletb", item);
		model.addAttribute("layout","Table.jsp");
		return "AdminLayout/index";
	}
	
	public String[] enumToStringArray(Enum<?>[] enumValues) {
        String[] result = new String[enumValues.length];
        for (int i = 0; i < enumValues.length; i++) {
            result[i] = enumValues[i].name();
        }
        return result;
    }
	
	
	@ModelAttribute("status")
	public String[] populateStatusTB() {
		return enumToStringArray(Status_Table.values());
	}
	
	@ModelAttribute("type")
	public String[] populateTypesTB() {
		return enumToStringArray(Type_Table.values());
	}
	@ModelAttribute("filltb")
	public List<Table_Order> FillData(){
		return tbldao.findAll();
	}
	@GetMapping("/menu")
	public String returnMenulayout(Model model) {
		model.addAttribute("layout","menu.jsp");
		Menu item = new Menu();
		model.addAttribute("item", item);
		List<Menu> items = dao.findAll();
		model.addAttribute("items", items);
		model.addAttribute("nextId", String.valueOf(ConcatIDMMenu(items)));
		return "AdminLayout/index";
	}

	
	@GetMapping("register")
	public String showForm(Model model) {
		model.addAttribute("staff", new Staff());
		ls1 = staffdao.findAll();
		String maNv = ReturnIdStaff(ls1);
		System.out.println(maNv);
		model.addAttribute("idStaff",maNv);
		logger.info("access to Admin/register");
		Staff staff = new Staff();
		model.addAttribute("staff",staff);
		model.addAttribute("layout","AdminCrudStaff.jsp");
		return "AdminLayout/index";
	}
	// hàm ghép id
		public String ReturnIdStaff(List<Staff> ls){
			String maNV = "";

			if(ls.size() <10) {
				maNV = String.valueOf("NV00"+ls.size());
			}else {
				maNV = String.valueOf("NV0"+ls.size());
			}
			return maNV;
		}
		
		
//	@GetMapping("/chart")
//	public String returnChartStaff(Model model) {
//		int[] charts = {65, 59, 80, 81, 56, 55, 40};
//		model.addAttribute("chart",charts);
//		return "AdminLayout/charts-chartjs";
//	}
	
	@RequestMapping(value = "/file-picker")
    public String showFilePicker(Model model) {
        return "AdminLayout/file-picker";
    }
}
