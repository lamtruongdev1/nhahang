package com.poly.entity;

import java.util.Collections;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;

import com.poly.Enum.Role_Account;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table
public class Role {
	 @Id
	  private Integer id;
	  private String name;
	  @OneToMany(mappedBy = "role")
	  private List<Account> account;
	  public Role() {
	        this.id = id;
	        this.name = name;
	  }
	  
	  
	  public Role(Integer id, String name) {
		this.id = id;
		this.name = name;
	}


	public List<GrantedAuthority> getAuthorities() {
	        // Tạo một danh sách GrantedAuthority dựa trên tên của Role
	        return Collections.singletonList((GrantedAuthority) () -> "ROLE_" + name);
	  }
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Account> getAccount() {
		return account;
	}
	public void setAccount(List<Account> account) {
		this.account = account;
	}
}
