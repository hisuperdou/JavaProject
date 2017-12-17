package com.dou.cakeonline.details.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dou.cakeonline.details.server.NextServer;
import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.Carts;
@Controller  
//@RequestMapping("/look.action")
public class LookupController {
	@Resource
	private NextServer nextServer;
	@RequestMapping("/lookone")
	public String ToCart(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		String name = request.getParameter("name");
		System.out.println(name);
        List<Cake> cartlist = this.nextServer.lookone(name);
 
        for( Cake cake: cartlist){  
   		 
		      
		    	  System.out.println(cake.getId());
		    
	    modelMap.put("list", cartlist);
	    
        }
        return "home";
	}
	}
		
		
		
		
		



