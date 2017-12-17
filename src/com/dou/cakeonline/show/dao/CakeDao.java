package com.dou.cakeonline.show.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dou.cakeonline.entity.Cake;

//����ע��д���������ļ��в�����дDao���bean
@Repository

public class CakeDao{
 @Autowired
    private SessionFactory sessionFactory;
    /**
  * ��ҳ��ѯ
  * @param hql ��ѯ������
  * @param offset ��ʼ��¼
  * @param length һ�β�ѯ������¼
  * @return ���ز�ѯ��¼����
  */
@SuppressWarnings("unchecked")
     public List<Cake> queryForPage(int offset, int length) {
       //��ѯ���еļ�¼��
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
     //��ѯ��¼����

     //����id��ѯ��¼
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