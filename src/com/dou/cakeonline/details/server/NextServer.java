/**
 * 
 */
/**
 * @author g1h
 *
 */
package com.dou.cakeonline.details.server;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dou.cakeonline.details.dao.CakeDao1;
import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.Carts;
import com.dou.cakeonline.entity.User;
@Service
@Transactional(readOnly=false)
public class NextServer {

	@Resource
	private CakeDao1 NextDao;
	

	public Cake landone(int name1) {
		System.out.println(name1);
		return this.NextDao.findOne(name1);
		
	}
	public List<Carts> find() {
		return this.NextDao.findAll();
		
	}
	
    public void regist1(Carts man){
		 this.NextDao.saveUser(man);
		 System.out.println(man.getCakeid()+"nisho");
	}
    
    public void addNum(Carts cart){
    	 this.NextDao.updateNum(cart);
	}
    public Carts findcart(int name1) {
    	return this.NextDao.findcart1(name1);
		
    	
    }
    public void deleteone(Carts cart) {
    	this.NextDao.deleteone1(cart);
    }
    public List<Cake> lookone(String name) {
    	return this.NextDao.findwant(name);
    	
    }
    public List<Cake> cakelist(){
    	return this.NextDao.findlist();
    	
    }
    public Cake  findcake(int a) {
    	return this.NextDao.findonecake(a);
    	
    }
    public void deletetwo(Cake cake) {
    	this.NextDao.delete2(cake);
    	
    }
    public void updateone(Cake cake,String price) {
    	this.NextDao.updateone(cake,price);
    }
    
    
}
