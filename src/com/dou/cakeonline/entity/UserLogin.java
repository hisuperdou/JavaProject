package com.dou.cakeonline.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="userlogin")
public class UserLogin {
	
	private String loginName;
	private String password;
	private UserInfo userInfo;
	
	@Id
	@GenericGenerator(name="loginid", strategy="assigned")
	@GeneratedValue(generator="loginid")
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
}
