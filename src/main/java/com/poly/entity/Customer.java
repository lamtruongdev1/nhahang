package com.poly.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import com.poly.Enum.*;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;

@Entity
@jakarta.persistence.Table(name = "customer")
@SuppressWarnings("serial")
public class Customer implements Serializable {
	@Id
	String id;
	String firstname;
	String lastname;
	LocalDate birthday;
	String email;
	String phonenumber;
	Enum<Status_Staff> status;
	@OneToMany(mappedBy = "customer")
    private List<Account> account;
	@OneToMany(mappedBy = "customer")
    private List<Order> order;
	
	public Customer() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public LocalDate getBirthday() {
		return birthday;
	}

	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public Enum<Status_Staff> getStatus() {
		return status;
	}

	public void setStatus(Enum<Status_Staff> status) {
		this.status = status;
	}

	public List<Account> getAccount() {
		return account;
	}

	public void setAccount(List<Account> account) {
		this.account = account;
	}

	public List<Order> getOrder() {
		return order;
	}

	public void setOrder(List<Order> order) {
		this.order = order;
	}
}
