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
@RequestMapping("/deleteone")

public class DelController {
	@Resource
	private NextServer nextServer;
	@RequestMapping("/dell")
	public String delete(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		
		String name = request.getParameter("name");
		int name1 = Integer.valueOf(name);
		Carts Carts =(Carts) this.nextServer.findcart(name1);
        
	    this.nextServer.deleteone(Carts);
	    
		List<Carts> cartlist = this.nextServer.find();
	    modelMap.put("list", cartlist);
	    return "cart";
		}
	@RequestMapping("/dell2")
	public String delete1(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		String name = request.getParameter("name");
		int name1 = Integer.valueOf(name);
		Cake cake=(Cake)this.nextServer.findcake(name1);
		this.nextServer.deletetwo(cake);
		List<Cake> cartlist = this.nextServer.cakelist();
	    modelMap.put("list", cartlist);
	    return "product_list";
	}
	
}

