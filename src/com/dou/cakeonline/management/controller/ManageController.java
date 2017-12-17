/**
 * 
 */
/**
 * @author g1h
 *
 */
package com.dou.cakeonline.management.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dou.cakeonline.details.server.NextServer;

import com.dou.cakeonline.entity.Carts;
@Controller  
@RequestMapping("/deleteback")

public class ManageController {
	@Resource
	private NextServer nextServer;
	@RequestMapping("/del")
	public String delete(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		
		String name = request.getParameter("name");
		int name1 = Integer.valueOf(name);
		Carts Carts =(Carts) this.nextServer.findcart(name1);
        
	    this.nextServer.deleteone(Carts);
	    
		List<Carts> cartlist = this.nextServer.find();
	    modelMap.put("list", cartlist);
	    return "cart";
		
	

}
	@RequestMapping("/dudate")
	public String update(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		
		String name = request.getParameter("name");
		int name1 = Integer.valueOf(name);
		Carts Carts =(Carts) this.nextServer.findcart(name1);
        
	    this.nextServer.deleteone(Carts);
	    
		List<Carts> cartlist = this.nextServer.find();
	    modelMap.put("list", cartlist);
	    return "cart";
		
	

}
	
}
