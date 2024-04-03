package com.poly.service;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;

import com.poly.entity.Account;
import com.poly.entity.Role;


public class CustomUserDetails extends User{
	 Account account;

	    public CustomUserDetails(Account account) {
	        super(account.getUsername(), account.getPassword(), mapRolesToAuthorities(account.getRole()));
	        this.account = account;
	    }

	    private static Collection<? extends GrantedAuthority> mapRolesToAuthorities(Role role) {
	        return role.getAuthorities()
	                .stream()
	                .map(permission -> new SimpleGrantedAuthority(role.getName()))
	                .collect(Collectors.toList());
	    }

	    public Account getAccount() {
	        return account;
	    }
}
