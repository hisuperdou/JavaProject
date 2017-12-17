package com.dou.cakeonline.details.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.hibernate.engine.internal.JoinSequence.Join;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
//import org.springframework.util.StringUtils;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.dou.cakeonline.details.server.NextServer;
//import com.dou.cakeonline.entity.Cake;
//import com.dou.cakeonline.entity.Carts;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dou.cakeonline.details.server.NextServer;
import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.Carts;




@Controller  
@RequestMapping("/nextshop")
public class CartController {  
	@Resource
	private NextServer nextServer;
	@RequestMapping("/shopping")
	public String regist(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		
		String name = request.getParameter("name");
		int name1 = Integer.valueOf(name);
		Cake litlecake = (Cake) this.nextServer.landone(name1);
        List<Carts> list4 = this.nextServer.find();
	    boolean flag = false;
	    
	    
			for( Carts cart: list4){  
		 
		      if(cart.getCakeid() == litlecake.getId()){  
		          //��������������  
		    	  this.nextServer.addNum(cart); 
		          flag = true;  
		          break;  
		      }  
		    }  
			
		  //��������ڣ����һ���µ���Ʒ  
		  if(!flag){  
			  System.out.println(litlecake.getId()+"wosho");
		  	  Carts tbItem=new Carts();
		  	  
		      tbItem.setNum(1);
		      tbItem.setImg1(litlecake.getImg1());
		      tbItem.setPrice(litlecake.getPrice());
		      tbItem.setDiscountprice(litlecake.getDiscountprice());
		      tbItem.setCakeid(litlecake.getId());
		      tbItem.setName(litlecake.getName());
		      
		      this.nextServer.regist1(tbItem);
		   }
		  List<Cake> cartlist = this.nextServer.cakelist();
		    modelMap.put("list", cartlist);
		   
		   return "home";

	}

	
}
		
		

		
		


		

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//    @Autowired  
//    private NextServer nextServer;
//    @Value("${CART_KEY}")  
//    private String CART_KEY;  
//    @Value("${CART_EXPIRE}")  
//    private Integer CART_EXPIRE;  
//      
//
//    @RequestMapping("/cart")  
//    public String addItemCart(@PathVariable int itemId,@RequestParam(defaultValue="1") Integer num,  
//            HttpServletRequest request,HttpServletResponse response){  
//        //ȡ���ﳵ��Ʒ�б�  
//        List<Carts> cartList = getCartItemList(request);  
//
//        //�ж���Ʒ�ڹ��ﳵ���Ƿ����  
//        boolean flag = false;  
//        for( Carts cart: cartList){  
//            //TbItem/����tbItem��ID������е�itemId���ǰ�װ���͵�Long��Ҫ�Ƚ��Ƿ���Ȳ�Ҫ��==����Ϊ�����Ƚ�  
//            //���Ƕ���ĵ�ַ������ֵ��Ϊ�������ǱȽϵ���ֵ����ô����ʹ��.longValue����ȡֵ  
//            if(cart.getId() == itemId){  
//                //��������������  
//            	cart.setNum(cart.getNum() + num);  
//                flag = true;  
//                break;  
//            }  
//        }  
//        //��������ڣ����һ���µ���Ʒ  
//        if(!flag){  
//            //��Ҫ���÷���ȡ��Ʒ��Ϣ  
//        	Cake litlecake = nextServer.landone(itemId);  
//            //���ù������Ʒ���� 
//        	Carts tbItem=new Carts();
//            tbItem.setNum(num);
//            tbItem.setImg1(litlecake.getImg1());
//            tbItem.setPrice(litlecake.getPrice());
//            tbItem.setDiscountprice(litlecake.getDiscountprice());
//            tbItem.setId(litlecake.getId());
//            
//            //ȡһ��ͼƬ  
// 
//            cartList.add(tbItem);  
//        }  
//        //�ѹ��ﳵ�б�д��cookie  
//        CookieUtils.setCookie(request, response, CART_KEY, Join.toJSONString(cartList),  
//                CART_EXPIRE, true);  
//        //������ӳɹ�ҳ��  
//        return "cart";  
//    }  
      
//    private List<Carts> getCartItemList(HttpServletRequest request){  
//        //��cookie��ȡ���ﳵ��Ʒ�б�  
//        String json = CookieUtils.getCookieValue(request, CART_KEY, true);//Ϊ�˷�ֹ���룬ͳһ�±����ʽ  
//        if(StringUtils.isBlank(json)){  
//            //˵��cookie��û����Ʒ�б���ô�ͷ���һ���յ��б�  
//            return new ArrayList<Carts>();  
//        }  
//        List<Carts> list = Join.parseArray(json, Cake.class);  
//        return list;  
//    }  
