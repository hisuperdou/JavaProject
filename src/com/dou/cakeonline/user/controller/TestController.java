package com.dou.cakeonline.user.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dou.cakeonline.entity.Cake;
import com.dou.cakeonline.entity.User;
import com.dou.cakeonline.user.sever.TestServiceImpl;

@Controller

public class TestController {

	@Resource
	private TestServiceImpl testServiceImpl;

	@RequestMapping("/land")
	public String land(HttpServletRequest request,HttpServletResponse response){
		System.out.println("666666666");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		List<User> list1 = this.testServiceImpl.land();
		System.out.println(list1);
		for(int i =0;i<list1.size();i++) {
			if(username.equals(list1.get(i).getId()) && password.equals(list1.get(i).getPassword())){
				System.out.println("lskdfj666666666");

				 return "first" ;
			}
		}
		System.out.println("lskdfj");
		
		
		return "login";
	}
	
	@RequestMapping("/regist")
	public String regist(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		
		if(!password1.equals(password2)) {
			return "login";
			
		}
		else {
			
			User newperson=new User();
			newperson.setId(username);
			newperson.setPassword(password2);
			
			this.testServiceImpl. regist1(newperson);
			
			
			
			return "login";
			
			
		}
		

		
	}

	
	
}
