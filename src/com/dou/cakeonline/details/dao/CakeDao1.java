/**
 * 
 */
/**
 * @author g1h
 *
 */
package com.dou.cakeonline.details.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.Carts;
import com.dou.cakeonline.entity.User;

@Repository
public class CakeDao1 {

	@Resource
	private SessionFactory sessionFactory;
	public Cake findOne(int name){
		System.out.println(name);
        
		Cake q=(Cake)sessionFactory.getCurrentSession().get(Cake.class,name);
		
		return q;
		
		
	}
	public List<Carts> findAll(){
//      String hql="select id,password from user ";
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Carts");
		return q.list();
	}
	
	public void saveUser(Carts man){
    Carts one=new Carts();
    System.out.println(man.getCakeid()+"iiiiisho");

	one.setNum(1);
    one.setImg1(man.getImg1());
    one.setPrice(man.getPrice());
    one.setDiscountprice(man.getDiscountprice());
    one.setCakeid(man.getCakeid());
    one.setName(man.getName());
	
	Session s=this.sessionFactory.openSession();
	Transaction t=s.beginTransaction();
	s.save(one);
	t.commit();
	s.close();
	}
	public void updateNum(Carts man) {
		
		int a=man.getNum();
		Session s=this.sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		man.setNum(a+1);
		s.update(man);
		t.commit();
		s.close();		
	}
	public Carts findcart1(int name1) {
    Carts Cart1=(Carts)sessionFactory.getCurrentSession().get(Carts.class,name1);
		
	return Cart1;
   }
   public void deleteone1(Carts cart) {
	    System.out.println(cart.getId()+"fffffffffffffffffffffffffffffffeeeeeeeeeeeeeeeeeeeee");
	    Session s=this.sessionFactory.openSession();
		Transaction t=s.beginTransaction();		
		s.delete(cart);//É¾³ý
		t.commit();
		s.close();	   
//	   int a=cart.getId();	   
//	   String hql = "delete from Cartswhere id =a";
//	   this.sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	   
   }
   public List<Cake> findwant(String name){
        String hql="from Cake where name like '%"+ name+"%'";
		Query q=this.sessionFactory.getCurrentSession().createQuery(hql);
		System.out.println(q);
		
		return q.list();
	   
   }
   public List<Cake> findlist(){
	Query q=this.sessionFactory.getCurrentSession().createQuery("from Cake");
	return q.list();
	
	   
   }
   public Cake findonecake(int a) {
	   Cake cake=(Cake)sessionFactory.getCurrentSession().get(Cake.class,a);
		
		return cake;
   }
	   
  
	   
   
   public void delete2(Cake cake) {
	    
	    Session s=this.sessionFactory.openSession();
		Transaction t=s.beginTransaction();		
		s.delete(cake);//É¾³ý
		t.commit();
		s.close();	   
   }
   public void updateone(Cake cake,String price) {
	    String a=cake.getPrice();
		Session s=this.sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		cake.setPrice(a+price);
		s.update(cake);
		t.commit();
		s.close();		

	   
   }
}