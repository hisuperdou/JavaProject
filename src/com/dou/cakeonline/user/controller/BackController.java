package com.dou.cakeonline.user.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dou.cakeonline.entity.BackUser;
import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.user.sever.TestServiceImpl;
@Controller
public class BackController {
	@Resource
	private TestServiceImpl testServiceImpl;

	@RequestMapping("/backland")
	public String land(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
		System.out.println("666666666");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		List<BackUser> list1 = this.testServiceImpl.backland();
		
		for(int i =0;i<list1.size();i++) {
			if(username.equals(list1.get(i).getId()) && password.equals(list1.get(i).getPassword())){
				System.out.println("lskdfj666666666");
				 List<Cake> list = testServiceImpl.getList();
			     modelMap.put("list", list);
			     return "product_list";
			}
		}
		System.out.println("lskdfj");
		
		
		return "product_list";
	}

}
