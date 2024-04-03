package com.poly.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError() {
        return "AdminLayout/pages-error-404"; // Chuyển hướng sang trang JSP error404.jsp
    }

    public String getErrorPath() {
        return "/error";
    }
}