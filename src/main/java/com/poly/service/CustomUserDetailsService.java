package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.poly.Enum.Role_Account;
import com.poly.dao.AccountDAO;
import com.poly.entity.Account;
import com.poly.entity.Role;

public class CustomUserDetailsService implements UserDetailsService {
	@Autowired(required = true)
	AccountDAO accountdao;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		Account account = accountdao.findByUsername(username,1);
		if(account==null) {
			new UsernameNotFoundException("email không tồn tại");
		}
		return new CustomUserDetails(account);
	}
	
}
