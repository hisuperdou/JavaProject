/**
 * 
 */
/**
 * @author g1h
 *
 */
package com.dou.cakeonline.details.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dou.cakeonline.details.server.NextServer;
import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.Carts;
import com.dou.cakeonline.entity.User;

@Controller
@RequestMapping("/message1")

public class NextController {

	@Resource
	private NextServer nextServer;

	@RequestMapping("/nextshow")
	public String landed(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
		System.out.println("controller");
		String name = request.getParameter("name");
        int name1 = Integer.valueOf(name);
        Cake list8 = (Cake) this.nextServer.landone(name1);
		System.out.println(list8);
		
		
		modelMap.put("list8", list8);
	    return "single";

	}
	@RequestMapping("/nextshow1")
	public String change(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
		System.out.println("controller");
		String name = request.getParameter("name");
        int name1 = Integer.valueOf(name);
        Cake list8 = (Cake) this.nextServer.landone(name1);
		System.out.println(list8.getName()+"woshinimaaaaaaa");
		
		
		modelMap.put("list8", list8);
	    return "change";

	}
	@RequestMapping("/toup")
	public String update(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		
		String name = request.getParameter("name");
		System.out.println(name);
		String price = request.getParameter("price");
		System.out.println(price);
		
		int name1 = Integer.valueOf(name);
		Cake cake =(Cake) this.nextServer.findcake(name1);
        
	    this.nextServer.updateone(cake,price);
	    
		List<Cake> cartlist = this.nextServer.cakelist();
	    modelMap.put("list", cartlist);
	    return "product_list";
		
	

}


		
	}

	
	
