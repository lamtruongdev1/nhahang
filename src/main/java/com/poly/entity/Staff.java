package com.poly.entity;

import java.io.Serializable;
import java.util.List;

import com.poly.Enum.Status_Staff;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "staff")
@SuppressWarnings("serial")
public class Staff implements Serializable{
	@Id
	String id;
	public String firstname;
	public String lastname;
	Boolean gender;
	String email;
	String id_Identity_Card;
	Double salary;
	Enum<Status_Staff> status;
	@OneToMany(mappedBy = "staff")
    private List<Account> account;
	
	@OneToMany(mappedBy = "staff")
    private List<Bill> bill;
	public Staff() {
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

	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getId_Identity_Card() {
		return id_Identity_Card;
	}

	public void setId_Identity_Card(String id_Identity_Card) {
		this.id_Identity_Card = id_Identity_Card;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
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
}
