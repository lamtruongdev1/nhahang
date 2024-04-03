package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Table_Order;

public interface TableDAO extends JpaRepository<Table_Order, Integer>{

	@Query("SELECT t FROM Table_Order t WHERE t.id = ?1")
	Table_Order findByName(String id);
	void deleteByName(String name);
	
}
