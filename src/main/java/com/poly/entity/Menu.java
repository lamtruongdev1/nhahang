package com.poly.entity;

import java.io.Serializable;
import java.util.List;

import com.poly.Enum.Type_Food;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Menu_Food")
public class Menu implements Serializable{
	@Id
	String id;
	String name;
	@Enumerated(EnumType.STRING)
	@Column(name="type")
	Type_Food type;
	Double price;
	String description;
	String image;
	@OneToMany(mappedBy = "menu")
    private List<Bill_detail> bill_detail;
	
	public Menu() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Type_Food getType() {
		return type;
	}

	public void setType(Type_Food type) {
		this.type = type;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public List<Bill_detail> getBill_detail() {
		return bill_detail;
	}

	public void setBill_detail(List<Bill_detail> bill_detail) {
		this.bill_detail = bill_detail;
	}
}
