package com.dou.cakeonline.show.server;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.Page;
import com.dou.cakeonline.show.dao.CakeDao;


@Repository("studentMessageService")
@Transactional
public class CakeService {
        @Autowired
        public CakeDao studentMessagedao;
        /**
         * ��ҳ��ѯ 
         * @param currentPage ��ǰҳ�ţ�������ʾ��ҳ��
         * @param pageSize ÿҳ��ʾ�ļ�¼����
         * @return ����˷�ҳ��Ϣ(������¼��list)��Bean
         * */
        public Page queryForPage(int currentPage,int pageSize) {
            Page page = new Page();       
            //�ܼ�¼��
            int allRow = studentMessagedao.getAllRowCount();
            //��ǰҳ��ʼ��¼
            int offset = page.countOffset(currentPage,pageSize);  
            //��ҳ��ѯ�����
            List<Cake> list = studentMessagedao.queryForPage(offset, pageSize); 
            page.setPageNo(currentPage);
            page.setPageSize(pageSize);
            page.setTotalRecords(allRow);
            page.setList(list);    
            return page;
        }
         public void Servicesave(Cake st){
             studentMessagedao.save(st);
         }
        public void Serviceupdate(Cake st){
            studentMessagedao.update(st);
        }
        public void Servicedelete(Cake st){
            studentMessagedao.delete(st);
        }
        public int ServicegetCount(){
            return studentMessagedao.getAllRowCount();
        }
        public  Cake QueryById(int id){
            return studentMessagedao.QueryById(id);
        }

}