package com.dou.cakeonline.entity;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.dou.cakeonline.entity.CakeType;


@Entity
@Table(name="product")
public class Cake {

	private int id;
	private String name;
	private String description;
	private String price;
	private String discountprice;
	private String listimg;
	private String img1;
	private String img2;
	private String img3;
	private CakeType cakeType;
//	public Cake(int id, String name, String description, int price,int discountprice,String listimg,String img1,String img2,String img3) {
//		// TODO Auto-generated constructor stub
//		this.id=id;
//		this.name=name;
//		this.description=description;
//		this.price=price;
//		this.discountprice=discountprice;
//		this.listimg=listimg;
//		this.img1=img1;
//		this.img2=img2;
//		this.img3=img3;
//		
//		
//		
//	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price2) {
		this.price = price2;
	}
	public String getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(String discountprice2) {
		this.discountprice = discountprice2;
	}
	public String getListimg() {
		return listimg;
	}
	public void setListimg(String listimg) {
		this.listimg = listimg;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	@ManyToOne
	@JoinColumn(name="Type")
	public CakeType getCakeType() {
		return cakeType;
	}
	public void setCakeType(CakeType cakeType) {
		this.cakeType = cakeType;
	}

}



