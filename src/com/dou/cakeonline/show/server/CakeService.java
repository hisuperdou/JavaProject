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
         * 分页查询 
         * @param currentPage 当前页号：现在显示的页数
         * @param pageSize 每页显示的记录条数
         * @return 封闭了分页信息(包括记录集list)的Bean
         * */
        public Page queryForPage(int currentPage,int pageSize) {
            Page page = new Page();       
            //总记录数
            int allRow = studentMessagedao.getAllRowCount();
            //当前页开始记录
            int offset = page.countOffset(currentPage,pageSize);  
            //分页查询结果集
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