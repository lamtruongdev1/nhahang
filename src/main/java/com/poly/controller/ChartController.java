package com.poly.controller;



import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;

@Controller
public class ChartController {

//    @GetMapping("/chart")
//    public String showChart(Model model) throws IOException {
//        JFreeChart chart = createChart();
//        String filename = "chart.png";
//        ChartUtils.saveChartAsPNG(new File(filename), chart, 400, 300);
//        model.addAttribute("chart", filename);
//        return "AdminLayout/Achart";
//    }
	
	
    @SuppressWarnings("unchecked")
	@GetMapping("/chart")
    public void generateChart(HttpServletResponse response) throws IOException {
        @SuppressWarnings("rawtypes")
		DefaultPieDataset dataset = new DefaultPieDataset();
        dataset.setValue("Món Việt", 50);
        dataset.setValue("Món Nhật", 20);
        dataset.setValue("Món Hàn", 20);
        dataset.setValue("Món Khác", 10);
        JFreeChart chart = ChartFactory.createPieChart("Thống kê danh sách món ăn", dataset, true, true, false);
        
//Bieu do cot: 
//        JFreeChart chart2 = ChartFactory.createBarChart(
//                "Column Chart", // chart title
//                "Category",     // domain axis label
//                "Value",        // range axis label
//                (CategoryDataset) dataset         // data
//        );
//        
//        response.setContentType("image/png");
        ChartUtils.writeChartAsPNG(response.getOutputStream(), chart, 400, 300);
        
    }

//    @SuppressWarnings("unchecked")
//	private JFreeChart createChart() {
//        @SuppressWarnings("rawtypes")
//		DefaultPieDataset dataset = new DefaultPieDataset();
//        dataset.setValue("Category 1", 50);
//        dataset.setValue("Category 2", 30);
//        dataset.setValue("Category 3", 20);
//        return ChartFactory.createPieChart("Bieu do thong ke theo mon", dataset);
//    }
}