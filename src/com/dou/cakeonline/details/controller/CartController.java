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
		          //如果存在数量相加  
		    	  this.nextServer.addNum(cart); 
		          flag = true;  
		          break;  
		      }  
		    }  
			
		  //如果不存在，添加一个新的商品  
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
//        //取购物车商品列表  
//        List<Carts> cartList = getCartItemList(request);  
//
//        //判断商品在购物车中是否存在  
//        boolean flag = false;  
//        for( Carts cart: cartList){  
//            //TbItem/由于tbItem的ID与参数中的itemId都是包装类型的Long，要比较是否相等不要用==，因为那样比较  
//            //的是对象的地址而不是值，为了让它们比较的是值，那么可以使用.longValue来获取值  
//            if(cart.getId() == itemId){  
//                //如果存在数量相加  
//            	cart.setNum(cart.getNum() + num);  
//                flag = true;  
//                break;  
//            }  
//        }  
//        //如果不存在，添加一个新的商品  
//        if(!flag){  
//            //需要调用服务取商品信息  
//        	Cake litlecake = nextServer.landone(itemId);  
//            //设置购买的商品数量 
//        	Carts tbItem=new Carts();
//            tbItem.setNum(num);
//            tbItem.setImg1(litlecake.getImg1());
//            tbItem.setPrice(litlecake.getPrice());
//            tbItem.setDiscountprice(litlecake.getDiscountprice());
//            tbItem.setId(litlecake.getId());
//            
//            //取一张图片  
// 
//            cartList.add(tbItem);  
//        }  
//        //把购物车列表写入cookie  
//        CookieUtils.setCookie(request, response, CART_KEY, Join.toJSONString(cartList),  
//                CART_EXPIRE, true);  
//        //返回添加成功页面  
//        return "cart";  
//    }  
      
//    private List<Carts> getCartItemList(HttpServletRequest request){  
//        //从cookie中取购物车商品列表  
//        String json = CookieUtils.getCookieValue(request, CART_KEY, true);//为了防止乱码，统一下编码格式  
//        if(StringUtils.isBlank(json)){  
//            //说明cookie中没有商品列表，那么就返回一个空的列表  
//            return new ArrayList<Carts>();  
//        }  
//        List<Carts> list = Join.parseArray(json, Cake.class);  
//        return list;  
//    }  
