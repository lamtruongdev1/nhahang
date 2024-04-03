package com.poly.entity;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
@Entity
@Table(name = "bill_detail")
public class Bill_detail implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer stt;
	@ManyToOne
	@JoinColumn(name = "bill.id")
	Bill bill;
	@ManyToOne
	@JoinColumn(name = "customer_order.id")
	Order order;
	@ManyToOne
	@JoinColumn(name = "menu.id")
	Menu menu;
	Double sale;
	String description;
	int count_of_food;
	
	public Bill_detail() {
		// TODO Auto-generated constructor stub
	}

	public Bill getBill() {
		return bill;
	}

	public void setBill(Bill bill) {
		this.bill = bill;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Menu getMenu() {
		return menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public Double getSale() {
		return sale;
	}

	public void setSale(Double sale) {
		this.sale = sale;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getCount_of_food() {
		return count_of_food;
	}

	public void setCount_of_food(int count_of_food) {
		this.count_of_food = count_of_food;
	}

}
