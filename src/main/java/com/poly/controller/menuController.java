package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.poly.Enum.Type_Food;
import com.poly.dao.MenuDao;
import com.poly.entity.Menu;

import jakarta.transaction.Transactional;

import java.util.List;

@Controller
@RequestMapping("/menu")
public class menuController {

	@Autowired
	private MenuDao dao;

	@ModelAttribute("types")
	public Type_Food[] populateTypes() {
		return Type_Food.values();
	}

	@GetMapping("/index")
	public String index(Model model) {
		Menu item = new Menu();
		model.addAttribute("item", item);
		List<Menu> items = dao.findAll();
		model.addAttribute("items", items);
		model.addAttribute("layout","menu.jsp");
		return "AdminLayout/index";
	}

	@GetMapping("/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Menu existingItem = dao.findById(id).orElse(new Menu());
		model.addAttribute("item", existingItem);
		List<Menu> allItems = dao.findAll();
		model.addAttribute("items", allItems);
		model.addAttribute("layout","menu.jsp");
		return "AdminLayout/index";
	}

	@PostMapping("/create")
	public String create(@ModelAttribute("item") Menu item) {
		dao.save(item);
		return "redirect:/menu/index";
	}

	// Thay đổi phương thức update
	@PostMapping("/update")
	public String update(@ModelAttribute("item") Menu item) {
	    System.out.println("Updated Item: " + item.toString()); // In ra console để kiểm tra
	    dao.save(item);
	    return "redirect:/menu/index";
	}


	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/menu/index";
	}
	@Transactional
	@GetMapping("/deleteByName/{name}")
	public String deleteByName(@PathVariable("name") String name) {
	    dao.deleteByName(name);
	    return "redirect:/menu/index";
	}

}

