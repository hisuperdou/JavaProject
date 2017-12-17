package com.dou.cakeonline.user.sever;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dou.cakeonline.entity.BackUser;
import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.User;
import com.dou.cakeonline.user.dao.TestDaoImpl;

@Service
@Transactional(readOnly=false)
public class TestServiceImpl {

	@Resource
	private TestDaoImpl testDaoImpl;
	
    public void regist1(User man){
		 this.testDaoImpl.saveUser(man);
	}
	public List<User> land() {
		return this.testDaoImpl.findAll();
		
	}
	public List<BackUser> backland() {
		return this.testDaoImpl.findback();
		
	}
	public List<Cake> getList(){
		return this.testDaoImpl.list();
		
	}

}
