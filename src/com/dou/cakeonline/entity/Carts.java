package com.dou.cakeonline.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="cart")
public class Carts {
//	private User user;
	private int id;	
	private String img1;
	private String price;
	private String discountprice;
	private int num;
	private int cakeid;
	private String name;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@GenericGenerator(strategy="increment", name = "")
//	public User getA() {
//		return user;
//	}
//	public void setA(User a) {
//		this.user = a;
//	}
//	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(String discountprice) {
		this.discountprice = discountprice;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getCakeid() {
		return cakeid;
	}
	public void setCakeid(int cakeid) {
		this.cakeid = cakeid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	

}
