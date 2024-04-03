package com.poly.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.poly.Enum.Status_Staff;
import com.poly.dao.StaffDAO;
import com.poly.entity.Staff;
@Service
public class StaffServiceImp implements StaffService {
	@Autowired
	StaffDAO staffDao;

	@Override
	public Staff findStaffByID(String id) {
		return staffDao.findStaffByID(id);
	}

	@Override
	public Staff  save(Staff entity) {
		return staffDao.save(entity);
	}

	@Override
	public List<Staff> saveAll(List<Staff> entities) {
		return (List<Staff>) staffDao.saveAll(entities);
	}

	@Override
	public Optional<Staff> findById(String id) {
		return staffDao.findById(id);
	}

	@Override
	public boolean existsById(String id) {
		return staffDao.existsById(id);
	}

	@Override
	public List<Staff> findAll() {
		return (List<Staff>) staffDao.findAll();
	}

	@Override
	public List<Staff> findAllById(List<String> ids) {
		return (List<Staff>) staffDao.findAllById(ids);
	}

	@Override
	public long count() {
		return staffDao.count();
	}

	@Override
	public void deleteById(String id) {
		staffDao.deleteById(id);
	}

	@Override
	public void delete(Staff entity) {
		staffDao.delete(entity);
	}

	@Override
	public void deleteAllById(List<String> ids) {
		staffDao.deleteAllById(ids);
	}

	@Override
	public void deleteAll(List<Staff>entities) {
		staffDao.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		staffDao.deleteAll();
	}

	@Override
	public Page<Staff> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return staffDao.findAll(pageable);
	}

	@Override
	public List<Staff> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return staffDao.findAll(sort);
	}

	@Override
	public Page<Staff> findStaff(Pageable pageable, Status_Staff active) {
		// TODO Auto-generated method stub
		return staffDao.findStaff(pageable, active);
	}

	@Override
	public Page<Staff> findStaffActive(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}


}