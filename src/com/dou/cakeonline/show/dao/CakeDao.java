package com.dou.cakeonline.show.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dou.cakeonline.entity.Cake;

//采用注解写，在配置文件中不用再写Dao层的bean
@Repository

public class CakeDao{
 @Autowired
    private SessionFactory sessionFactory;
    /**
  * 分页查询
  * @param hql 查询的条件
  * @param offset 开始记录
  * @param length 一次查询几条记录
  * @return 返回查询记录集合
  */
@SuppressWarnings("unchecked")
     public List<Cake> queryForPage(int offset, int length) {
       //查询所有的记录数
       Query query= (Query) sessionFactory.getCurrentSession().createQuery("from Cake");    
        query.setFirstResult(offset);
        query.setMaxResults(length);            
        return query.list(); 
       }

     public void save(Cake st){
     sessionFactory.getCurrentSession().save(st);
       }
     public void update(Cake st) {   
            sessionFactory.getCurrentSession().update(st);
       }
     public void delete(Cake st) {      
            sessionFactory.getCurrentSession().delete(st);
       }
     //查询记录总数

     //根据id查询记录
    public  Cake QueryById(int id) {
    	Cake st =(Cake) sessionFactory.getCurrentSession().get(Cake.class, id);
       return st;
     }

	public int getAllRowCount() {
		// TODO Auto-generated method stub
		int count=((Long) sessionFactory.getCurrentSession()
                .createQuery( "select count(*) from Cake").iterate().next()).intValue();
         return count;  
	}
}