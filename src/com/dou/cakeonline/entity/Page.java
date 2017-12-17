package com.dou.cakeonline.entity;

import java.util.List;

public class Page {
    // �����
    private List<Cake> list;

    // ��ѯ��¼����
    private int totalRecords;

    // ÿҳ��������¼
    private int pageSize;

    // �ڼ�ҳ
    private int pageNo;

    /**
     * @return ��ҳ��
     * */
    public int getTotalPages(){
        return (totalRecords+pageSize-1)/pageSize;
    }

    /**
     * ���㵱ǰҳ��ʼ��¼
     * @param pageSize ÿҳ��¼��
     * @param currentPage ��ǰ�ڼ�ҳ
     * @return ��ǰҳ��ʼ��¼��
     */
    public int countOffset(int currentPage,int pageSize){
        int offset = pageSize*(currentPage-1);
        return offset;
    }

    /**
     * @return ��ҳ
     * */
    public int getTopPageNo(){
        return 1;
    }

    /**
     * @return ��һҳ
     * */
    public int getPreviousPageNo(){
        if(pageNo<=1){
            return 1;
        }
        return pageNo-1;
    }

    /**
     * @return ��һҳ
     * */
    public int getNextPageNo(){
        if(pageNo>=getBottomPageNo()){
            return getBottomPageNo();
        }
        return pageNo+1;
    }

    /**
     * @return βҳ
     * */
    public int getBottomPageNo(){
        return getTotalPages();
    }


    public List<Cake> getList() {
        return list;
    }

    public void setList(List<Cake> list) {
        this.list = list;
    }

    public int getTotalRecords() {
        return totalRecords;
    }

    public void setTotalRecords(int totalRecords) {
        this.totalRecords = totalRecords;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

}