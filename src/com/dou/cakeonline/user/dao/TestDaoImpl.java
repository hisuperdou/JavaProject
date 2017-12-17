package com.dou.cakeonline.user.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.dou.cakeonline.entity.BackUser;
import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.User;
import com.dou.cakeonline.entity.UserInfo;
import com.dou.cakeonline.entity.UserLogin;



@Repository
public class TestDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	public List<User> findAll(){
//      String hql="select id,password from user ";
		Query q=this.sessionFactory.getCurrentSession().createQuery("from User");
		return q.list();
	}



	
	public void saveUser(User man){
	User one=new User();
	one.setId(man.getId());
	one.setPassword(man.getPassword());
	
	

	Session s=this.sessionFactory.openSession();
	Transaction t=s.beginTransaction();
	s.save(one);
	t.commit();
	s.close();
//	String a =one.getId();
//	String b=one.getPassword();
//	String hql="insert into User(id,password) values(a,b)";
//	Query sqlQuery = this.sessionFactory.getCurrentSession().createQuery(hql);
	

	
	
//	UserLogin ul=new UserLogin();
//	ul.setLoginName("zs");
//	ul.setPassword("123");
		
	
//	UserInfo ui=new UserInfo();
//	ui.setRealName("zhangsan");
//	ul.setUserInfo(ui);
//	ui.setUserLogin(ul);

	}
	public List<BackUser> findback(){
//      String hql="select id,password from user ";
		Query q=this.sessionFactory.getCurrentSession().createQuery("from BackUser");
		return q.list();
	}
	public List<Cake> list(){
		Query a=this.sessionFactory.getCurrentSession().createQuery("from Cake");
		return a.list();
		
	}





}
