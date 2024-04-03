package com.poly.entity;

import java.io.Serializable;
import java.time.LocalDate;

import com.poly.Enum.Status_Order;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Customer_Order")
public class Order implements Serializable {
	@Id
	String id;
	LocalDate create_Date;
	String description;
	LocalDate timeout;
	LocalDate timein;
	Enum<Status_Order> status;
	
	@ManyToOne
	@JoinColumn(name = "customer.id")
	Customer customer;
	
	@ManyToOne
	@JoinColumn(name = "table.id")
	Table_Order table;
	
	public Order() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public LocalDate getCreate_Date() {
		return create_Date;
	}

	public void setCreate_Date(LocalDate create_Date) {
		this.create_Date = create_Date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LocalDate getTimeout() {
		return timeout;
	}

	public void setTimeout(LocalDate timeout) {
		this.timeout = timeout;
	}

	public LocalDate getTimein() {
		return timein;
	}

	public void setTimein(LocalDate timein) {
		this.timein = timein;
	}

	public Enum<Status_Order> getStatus() {
		return status;
	}

	public void setStatus(Enum<Status_Order> status) {
		this.status = status;
	}

	public Table_Order getTable() {
		return table;
	}

	public void setTable(Table_Order table) {
		this.table = table;
	}
	

}
