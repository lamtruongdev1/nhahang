package com.poly.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.poly.Enum.Status_Staff;
import com.poly.entity.Staff;


public interface StaffService {

	void deleteAll();

	void deleteAll(List<Staff>entities);

	void deleteAllById(List<String> ids);

	void delete(Staff entity);

	void deleteById(String id);

	long count();

	List<Staff> findAllById(List<String> ids);

	List<Staff> findAll();

	boolean existsById(String id);

	Optional<Staff> findById(String id);

	List<Staff> saveAll(List<Staff> entities);

	Staff save(Staff entity);

	Staff findStaffByID(String id);

	Page<Staff> findStaffActive(Pageable pageable);
	
	Page<Staff> findAll(Pageable pageable);
	List<Staff> findAll(Sort sort);

	Page<Staff> findStaff(Pageable pageable, Status_Staff active);
}


