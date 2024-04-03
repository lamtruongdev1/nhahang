package com.poly.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.Enum.Status_Staff;
import com.poly.entity.Staff;

public interface StaffDAO extends JpaRepository<Staff, String> {
	@Query("select staff from Staff staff where staff.id=?1")
	Staff findStaffByID(String id);
	@Query("select staff from Staff staff where staff.status=?1")
	Page<Staff> findStaff(Pageable pageable,Enum<Status_Staff> sts1);
	
	Page<Staff> findAllByFirstnameLike(String keywords, Pageable pageable);
}
