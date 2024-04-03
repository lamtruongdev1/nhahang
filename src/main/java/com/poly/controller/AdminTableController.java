package com.poly.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.yaml.snakeyaml.util.EnumUtils;

import com.poly.Enum.Status_Staff;
import com.poly.Enum.Status_Table;
import com.poly.Enum.Type_Food;
import com.poly.Enum.Type_Table;
import com.poly.dao.TableDAO;
import com.poly.entity.Staff;
import com.poly.entity.Table_Order;

@Controller
@RequestMapping("admin")

public class AdminTableController {
	@Autowired
	TableDAO tableDAO;
	@Autowired
	TableDAO tbdao;
	
	
	@RequestMapping("/tblayout/submit")
	public String CreateTB(Model model,@RequestParam(name = "name") String name, @RequestParam(name = "status") String st,@RequestParam(name = "type") String tp) {
		//TODO: process POST request
		List<Table_Order> ls = tbdao.findAll();
		System.out.println(st);
		Table_Order tbl = new Table_Order();
		tbl.setId(ls.size()+1);
		tbl.setName(name);
		if(st.equals("Full")) {
			tbl.setStatus(Status_Table.Full);
		}else if(st.equals("Empty")){
			tbl.setStatus(Status_Table.Empty);
		}
		
		if(tp.equals("nomal")) {
			tbl.setType(Type_Table.nomal);
		}else if(tp.equals("middel")){
			tbl.setType(Type_Table.middel);
		}else if(tp.equals("special")){
			tbl.setType(Type_Table.special);
		}
		tbdao.save(tbl);
		model.addAttribute("layout","Table.jsp");
		return "AdminLayout/index";
	}
	
	@ModelAttribute("filltb")
	public List<Table_Order> getFull(){
		return tbdao.findAll();
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
	
	@ModelAttribute("tb")
	public List<Table_Order> FillData(){
		return tbdao.findAll();
	}
	
	

}
