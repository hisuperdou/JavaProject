package com.dou.cakeonline.details.controller;

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
@RequestMapping("/topay.action")

public class PayController {
	@Resource
	private NextServer nextServer;
	@RequestMapping("/tomypay")  
	public String ToCart(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		List<Carts> cartlist = this.nextServer.find();
	    modelMap.put("list", cartlist);
	    return "payment";

}
}