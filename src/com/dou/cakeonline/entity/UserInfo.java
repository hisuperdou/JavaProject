package com.dou.cakeonline.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="userinfo")
public class UserInfo {

	private String loginName;
	private String realName;
	private UserLogin userLogin;
	
	@Id
	@GenericGenerator(name="login", strategy="foreign", parameters={@Parameter(name="property", value="userLogin")})
	@GeneratedValue(generator="login")
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	@OneToOne(mappedBy="userInfo")
	public UserLogin getUserLogin() {
		return userLogin;
	}
	public void setUserLogin(UserLogin userLogin) {
		this.userLogin = userLogin;
	}
	
}
