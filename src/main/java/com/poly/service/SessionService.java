package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpSession;

@Service
public class SessionService {
@Autowired
HttpSession session;
public void setAttribute(String name, Object value)
{
	session.setAttribute(name, value);
}

/**
* Đọc giá trị của attribute trong session
* @param name tên attribute
* @return giá trị đọc được hoặc null nếu không tồn tại
*/
public <T> T getAtttribute(String name)
{
	return(T)session.getAttribute(name);
}



public void removeAttribute(String name)
{
	session.removeAttribute(name);
}
}
