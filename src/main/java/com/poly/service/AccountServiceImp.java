package com.poly.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.AccountDAO;
import com.poly.entity.Account;

@Service
public class AccountServiceImp implements AccountService{
@Autowired
AccountDAO accountdao;

@Override
public void deleteAll() {
	// TODO Auto-generated method stub
	
}

@Override
public void deleteAll(List<Account> entities) {
	// TODO Auto-generated method stub
	
}

@Override
public void deleteAllById(List<String> ids) {
	// TODO Auto-generated method stub
	
}

@Override
public void delete(Account entity) {
	// TODO Auto-generated method stub
	
}

@Override
public void deleteById(String id) {
	// TODO Auto-generated method stub
	
}

@Override
public long count() {
	// TODO Auto-generated method stub
	return 0;
}

@Override
public List<Account> findAllById(List<String> ids) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<Account> findAll() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public boolean existsById(String id) {
	// TODO Auto-generated method stub
	return false;
}

@Override
public Optional<Account> findById(String id) {
	// TODO Auto-generated method stub
	return Optional.empty();
}

@Override
public List<Account> saveAll(List<Account> entities) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Account save(Account entity) {
	// TODO Auto-generated method stub
	return accountdao.save(entity);
}
}
