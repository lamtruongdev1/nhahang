package com.poly.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import com.poly.Enum.Status_Bill;
import com.poly.Enum.Type_Pay;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "bill")
public class Bill implements Serializable {
	@Id
	String id;
	@ManyToOne
	@JoinColumn(name = "staff.id")
	Staff staff;
	LocalDate createDate;
	Enum<Type_Pay> type;
	Double total;
	Double payed;
	Double remain;
	Enum<Status_Bill> status;
	
	public Bill() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Staff getStaff() {
		return staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	public LocalDate getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}

	public Enum<Type_Pay> getType() {
		return type;
	}

	public void setType(Enum<Type_Pay> type) {
		this.type = type;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Double getPayed() {
		return payed;
	}

	public void setPayed(Double payed) {
		this.payed = payed;
	}

	public Double getRemain() {
		return remain;
	}

	public void setRemain(Double remain) {
		this.remain = remain;
	}

	public Enum<Status_Bill> getStatus() {
		return status;
	}

	public void setStatus(Enum<Status_Bill> status) {
		this.status = status;
	}
	
}
