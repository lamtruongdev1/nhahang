package com.poly.entity;

import java.util.List;

import com.poly.Enum.Status_Table;
import com.poly.Enum.Type_Table;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "table_Order")
public class Table_Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String name;
	Enum<Type_Table> type;
	Enum<Status_Table> status;
	@OneToMany(mappedBy = "table")
    private List<Order> order;
	
	public Table_Order() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Enum<Type_Table> getType() {
		return type;
	}

	public void setType(Enum<Type_Table> type) {
		this.type = type;
	}

	public Enum<Status_Table> getStatus() {
		return status;
	}

	public void setStatus(Enum<Status_Table> status) {
		this.status = status;
	}

	public List<Order> getOrder() {
		return order;
	}

	public void setOrder(List<Order> order) {
		this.order = order;
	}
}
