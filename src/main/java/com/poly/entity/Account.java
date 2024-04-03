package com.poly.entity;

import java.io.Serializable;
import java.util.List;

import com.poly.Enum.Role_Account;
import com.poly.Enum.Status_Account;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "account")
@SuppressWarnings("serial")
public class Account implements Serializable{
	@Id
	String id;
	String username;
	@ManyToOne
	@JoinColumn(name = "customer")
	Customer customer;
	@ManyToOne
	@JoinColumn(name = "staff")
	Staff staff;
	String password;
	Enum<Status_Account> status;
	@ManyToOne
	@JoinColumn(name = "role")
	Role role;
	
	public Account() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Staff getStaff() {
		return staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Enum<Status_Account> getStatus() {
		return status;
	}

	public void setStatus(Enum<Status_Account> status) {
		this.status = status;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	

}
