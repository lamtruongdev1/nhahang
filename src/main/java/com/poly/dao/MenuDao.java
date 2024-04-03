package com.poly.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Menu;

public interface MenuDao extends JpaRepository<Menu,String>{
		@Query("select menu from Menu menu where menu.id=?1")
	  	Menu findByName(String id);
	    void deleteByName(String name);
}