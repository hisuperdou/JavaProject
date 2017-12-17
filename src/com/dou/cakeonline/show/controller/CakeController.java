package com.dou.cakeonline.show.controller;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.Page;
import com.dou.cakeonline.show.server.CakeService;

@Controller
@RequestMapping("/message.action")
public class CakeController {

@Autowired
public CakeService studentMessageService;
public CakeController(){}
protected final transient Log log = LogFactory.getLog(CakeController.class);

@RequestMapping("/showlist")
//�ҵ����еļ�¼��ʵ���˷�ҳ
public String findAll(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {   
        String pageNo = request.getParameter("pageNo");
        if (pageNo == null) {
            pageNo = "1";
        }
        Page page = studentMessageService.queryForPage(Integer.valueOf(pageNo), 6);
        request.setAttribute("page", page);
        List<Cake> list = page.getList();
        modelMap.put("list", list);
        return "home";
}


}

////���������Ϣ
//@RequestMapping(params = "method=add")
//public String add(HttpServletRequest request, ModelMap modelMap) throws Exception{
//    return "student_add";
//}
////����������Ϣ
//@RequestMapping(params = "method=save")
//public String save(HttpServletRequest request, ModelMap modelMap){
//	Cake st = new Cake();
//    String name = request.getParameter("name");
//    String price=request.getParameter("price");
//    String discountprice=request.getParameter("discountprice");
//    String img1=request.getParameter("img1");
//    st.setName(name);
//    st.setPrice(price);
//    st.setDiscountprice(discountprice);
//    st.setImg1(img1);
//    
//    try{
//        studentMessageService.Servicesave(st);
//        modelMap.put("addstate", "��ӳɹ�");
//    }
//    catch(Exception e){
//        e.printStackTrace();
//        log.error(e.getMessage());
//        modelMap.put("addstate", "���ʧ��");
//    }       
//    return "student_add";
//}
////ɾ��������Ϣ
//@RequestMapping(params = "method=del")
//public String del(@RequestParam("id") String id) throws Exception{
//	Cake st=new Cake();
//    st.setId(Integer.valueOf(id));
//    studentMessageService.Servicedelete(st);
//    return "success";
//}
//
////�޸�������Ϣ���ԭ����������Ϣ����תҳ��
//@RequestMapping(params = "method=edit")
//public ModelAndView edit(@RequestParam("id") String id,HttpServletRequest request) throws Exception{
//         ModelAndView modelAndView =  new ModelAndView();
//         int idd=Integer.valueOf(id);
//         Cake st=studentMessageService.QueryById(idd);
//         
//         
//         String name = request.getParameter("name");
//         String price=request.getParameter("price");
//         String discountprice=request.getParameter("discountprice");
//         String img1=request.getParameter("img1");
//         st.setName(name);
//         st.setPrice(price);
//         st.setDiscountprice(discountprice);
//         st.setImg1(img1);
//
//         request.setAttribute("id", id);
//
//         modelAndView.setViewName("/edit");
//         return modelAndView;
//}
////�޸�������Ϣȷ���ύ
//@RequestMapping(params = "method=editsubmit")
//public String editsubmit(HttpServletRequest request) throws Exception{
//    
//     String id=request.getParameter("id");
//     Cake st=new Cake();
//     st.setId(Integer.valueOf(id));
//     String name = request.getParameter("name");
//     String price=request.getParameter("price");
//     String discountprice=request.getParameter("discountprice");
//     String img1=request.getParameter("img1");
//     st.setName(name);
//     st.setPrice(price);
//     st.setDiscountprice(discountprice);
//     st.setImg1(img1);
//     studentMessageService.Serviceupdate(st);
//     return "success";
//}
//}