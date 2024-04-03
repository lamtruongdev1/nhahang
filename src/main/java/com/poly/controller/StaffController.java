package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.apache.log4j.Logger;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.resource.NoResourceFoundException;

import com.poly.Enum.Role_Account;
import com.poly.Enum.Status_Account;
import com.poly.Enum.Status_Staff;
import com.poly.dao.AccountDAO;
import com.poly.dao.BillDAO;

import com.poly.dao.StaffDAO;
import com.poly.encryption.Encrypt;
import com.poly.entity.Account;
import com.poly.entity.Bill;
import com.poly.entity.Menu;
import com.poly.entity.Staff;
import com.poly.service.AccountService;

import com.poly.service.SessionService;
import com.poly.service.StaffService;
import com.poly.entity.Role;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("admin")
public class StaffController {
	
	private static Logger logger = Logger.getLogger(StaffController.class);

	@Autowired(required = true)
	StaffDAO staffdao;
	@Autowired(required = true)
	SessionService sessionService;

	@Autowired(required = true)
	AccountService accountService;
	@Autowired(required = true)
	AccountDAO accountdao;
	@Autowired
	StaffService staffService;
	@Autowired
	SessionService session;
	List<Staff> ls;
	@Autowired
	BillDAO billDao;
//	@Autowired
//	MenufoodDAO menuDao;
//	@Autowired
//	MenuService menuService;
//	@Autowired
//	ParamService paramService;


	

	@PostMapping("save")
	public String saveOrUpdate(@Validated @ModelAttribute("staff") Staff st, BindingResult result, Model model)
			throws Exception {
		st.setStatus(Status_Staff.ACTIVE);
		System.out.println(st.getStatus());
		System.out.println(st.getGender());
		staffService.save(st);
		Account account = new Account();
		account.setId(st.getFirstname() + st.getId_Identity_Card().substring(8, st.getId_Identity_Card().length()));
		account.setUsername(st.lastname + st.firstname);
		String pw = st.lastname + st.firstname
				+ st.getId_Identity_Card().substring(9, st.getId_Identity_Card().length());
		Encrypt encrypt = new Encrypt();
		String encryptPassword = encrypt.encrypt(pw);
		account.setPassword(encryptPassword);
		System.out.println(encryptPassword);
		account.setStatus(Status_Account.ACTIVE);
		account.setRole(new Role(0,"ADMIN"));
		account.setStaff(st);
		logger.info("access Admin/save");
		accountService.save(account);

		// System.out.println(st.getLastname()+st.getFirstname());
		model.addAttribute("staff", new Staff());
		return "redirect:/admin/register";
	}

//	@GetMapping("staff")
//	public String Allstaff(Model model, @RequestParam("keywords") Optional<String> kw, @RequestParam("p") Optional<Integer> p) 
//	{
//		//model.addAttribute("staff",staffService.findAll());
//		String keywords = kw.orElse(session.getAtttribute("keywords"));
//		session.setAttribute("keywords", keywords);
//		Pageable pageable = PageRequest.of(p.orElse(0), 5);
//		Page<Staff> page;
//		if(keywords==null)
//		{
//			page = staffService.findAll(pageable);
//			model.addAttribute("page",page);
//			return "AdminLayout/tables-data";
//		}
//		else
//		{
//			page = staffdao.findAllByFirstnameLike("%"+keywords+"%",pageable);
//			model.addAttribute("page",page);
//			return "AdminLayout/tables-data";
//		}
//		
//		
//	}	

	@GetMapping("staff")
	public String Allstaff(Model model, @RequestParam("p") Optional<Integer> p) throws NoResourceFoundException {
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Staff> page = staffService.findStaff(pageable,Status_Staff.ACTIVE);
		model.addAttribute("page", page);
		model.addAttribute("layout","tables-data.jsp");
		return "AdminLayout/index";
	}
	
	@ExceptionHandler(NoResourceFoundException.class)
	public String handleNoResourceFoundException(NoResourceFoundException ex) {
        logger.error("Resource not found", ex);
        return "AdminLayout/pages-error-404"; // Trả về một thông báo lỗi (nếu cần)
    }

	@GetMapping("staffwasblock")
	public String Allstaffwasblock(Model model, @RequestParam("p") Optional<Integer> p) throws NoResourceFoundException {

		
		System.out.println(logger.getName());
		logger.info("access Admin/staffwasblock");
		Pageable pageable = PageRequest.of(p.orElse(0), 7);
		Page<Staff> page = staffdao.findStaff(pageable,Status_Staff.BLOCK);
		model.addAttribute("page", page);
		return "AdminLayout/tables-general";
	}
	
	
	@GetMapping("/deleted/{id}")
	public String delete(@PathVariable("id") String id, Model model, @RequestParam("p") Optional<Integer> p) {

		Staff st = staffService.findStaffByID(id);
		st.setStatus(Status_Staff.BLOCK);
		staffService.save(st);
		
		return "redirect:/admin/staff";
	}

	@GetMapping("search")
	public String displayaccount(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {

		String keywords = kw.orElse(session.getAtttribute("keyword"));
		session.setAttribute("keywords", keywords);
		Pageable pageable = PageRequest.of(p.orElse(0), 3);
		Page<Staff> page = staffdao.findAllByFirstnameLike("%" + keywords + "%", pageable);
		model.addAttribute("page", page);

		return "AdminLayout/tables-data";
	}

	@GetMapping("edit/{id}")
	public String editStaff(@PathVariable("id") String id, Model model) {

		Optional<Staff> staff = staffService.findById(id);

		if (staff.isPresent()) // Neu co tra ve
		{
			model.addAttribute("staff", staff.get());
		} else {
			model.addAttribute("staff", new Staff());
		}
		logger.info("access Admin/edit");
		return "AdminLayout/AdminEditStaff";
	}

	@PostMapping("/edit/save")
	public String saveOrUpdate2(@Validated @ModelAttribute("staff") Staff st, BindingResult result, Model model)
			throws IOException {

		staffService.save(st);

		// System.out.println(st.getLastname()+st.getFirstname());
		model.addAttribute("staff", new Staff());
		return "AdminLayout/AdminCrudStaff";
	}

	@GetMapping("/chart")
    public void generateChart(HttpServletResponse response,Model model, @RequestParam("p") Optional<Integer> p) throws IOException {
		
	
		
		double tienthang1 = billDao.calculateTotalSalaryForMonthInYear(1, 2023);
		double tienthang2 = billDao.calculateTotalSalaryForMonthInYear(2, 2023);
		double tienthang3 = billDao.calculateTotalSalaryForMonthInYear(3, 2023);
		double tienthang4 = billDao.calculateTotalSalaryForMonthInYear(4, 2023);
		double tienthang5 = billDao.calculateTotalSalaryForMonthInYear(5, 2023);
		double tienthang6 = billDao.calculateTotalSalaryForMonthInYear(6, 2023);
		double tienthang7 = billDao.calculateTotalSalaryForMonthInYear(7, 2023);
		double tienthang8 = billDao.calculateTotalSalaryForMonthInYear(8, 2023);
		double tienthang9 = billDao.calculateTotalSalaryForMonthInYear(9, 2023);
		double tienthang10 = billDao.calculateTotalSalaryForMonthInYear(10, 2023);
		double tienthang11 = billDao.calculateTotalSalaryForMonthInYear(11, 2023);
		double tienthang12 = billDao.calculateTotalSalaryForMonthInYear(12, 2023);
		
		
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        dataset.addValue(tienthang1, "VNĐ", "1");
        dataset.addValue(tienthang2, "VNĐ", "2");
        dataset.addValue(tienthang3, "VNĐ", "3");
        dataset.addValue(tienthang4, "VNĐ", "4");
        dataset.addValue(tienthang5, "VNĐ", "5");
        dataset.addValue(tienthang6, "VNĐ", "6");
        dataset.addValue(tienthang7, "VNĐ", "7");
        dataset.addValue(tienthang8, "VNĐ", "8");
        dataset.addValue(tienthang9, "VNĐ", "9");
        dataset.addValue(tienthang10, "VNĐ", "10");
        dataset.addValue(tienthang11, "VNĐ", "11");
        dataset.addValue(tienthang12, "VNĐ", "12");
	
    	logger.info("access Admin/chart");
		
		
//        @SuppressWarnings("rawtypes")
//		DefaultPieDataset dataset = new DefaultPieDataset();
//        dataset.setValue("Tháng 1", tienthang1);
//        dataset.setValue("Tháng 2", tienthang2);
//        dataset.setValue("Tháng 3", tienthang3);
//        dataset.setValue("Tháng 4", tienthang4);
//        dataset.setValue("Tháng 5", tienthang5);
//        dataset.setValue("Tháng 6", tienthang6);
//        dataset.setValue("Tháng 7", tienthang7);
//        dataset.setValue("Tháng 8", tienthang8);	
//        dataset.setValue("Tháng 9", tienthang9);
//        dataset.setValue("Tháng 10", tienthang10);
//        dataset.setValue("Tháng 11", tienthang11);
//        dataset.setValue("Tháng 12", tienthang12);	
//        JFreeChart chart = ChartFactory.createPieChart("Thống kê doanh thu theo tháng năm 2023", dataset, true, true, false);
//        ChartUtils.writeChartAsPNG(response.getOutputStream(), chart, 700, 500);
		
		JFreeChart chart = ChartFactory.createBarChart("Thống kê doanh thu theo tháng năm 2023","Tháng","Doanh thu",dataset);
		ChartUtils.writeChartAsPNG(response.getOutputStream(), chart, 700, 500);
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
	// hàm check nhân viên
	
	@GetMapping("food")
	public String showfood(Model model) {

		model.addAttribute("menu", new Menu());
		model.addAttribute("errorPhoto","Has a problem with your photo");
		return "AdminLayout/AdminCrudFood";
	}
	
	@GetMapping("rollback")
	public String showlayout(Model model) {
		return "forward:/admin";
	}
	
//	@PostMapping("savefood")
//	public String saveOrUpdate(@Validated @ModelAttribute("menu") Menu mn, BindingResult result, Model model, @RequestParam("image") MultipartFile multiPartfile) throws IOException
//	{
//		if(result.hasErrors() || multiPartfile.isEmpty())
//		{
//			model.addAttribute("errorPhoto","Has a problem with your photo");
//			return"register-form";
//		}
//		String fileName = StringUtils.cleanPath(multiPartfile.getOriginalFilename());
//		String uploadDir = "images/";
//		mn.setImage(fileName);
//		paramService.save(multiPartfile, uploadDir);
//		menuService.saveAll(mn);
//		model.addAttribute("menu",new Menu());
//		return "AdminLayout/AdminViewFood";
//	}
//	
	
	
}
