package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Customer;
import com.poly.entity.Staff;

public interface CustomerDAO extends JpaRepository<Customer, String> {
	@Query("select customer from Customer customer where customer.id=?1")
	Customer findCustomerByID(String id);
}
