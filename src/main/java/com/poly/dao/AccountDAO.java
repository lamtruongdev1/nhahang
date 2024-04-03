package com.poly.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.Enum.Role_Account;
import com.poly.entity.Account;
import com.poly.entity.Role;

public interface AccountDAO extends JpaRepository<Account, String> {
	@Query("select account from Account account where account.username=?1 and account.password=?2 and account.role=?3")
	Account findAccount(String username, String password,Role role);
	
	@Query("select account from Account account where account.username=?1 and account.role.id=?2")
	Account findNameAccount(String username,int roleId);
	
	@Query("select account from Account account where account.username=?1 and account.role.id=?2")	
	Account findByUsername(String username,int roleId);	

}
