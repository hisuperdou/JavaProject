package com.dou.cakeonline.entity;

import java.beans.Transient;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="backuser")
public class BackUser {
	private String id;
	private String password;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 @Transient 

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	

}
