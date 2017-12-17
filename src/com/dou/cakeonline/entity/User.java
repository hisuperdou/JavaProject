package com.dou.cakeonline.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="user")

public class User {
	private String id;
	private String password;
	@Id
	
	@GenericGenerator(strategy="increment", name = "")
	
	public String getId() {
		return id;
	}
	public void setId(String username) {
		this.id = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
