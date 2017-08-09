package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	private ProductService productService;
	HomeController()
	{
		System.out.println("CREATING INSTANCE OF Home Controller");
	}
	@RequestMapping("/")
	public  String index()
	{
		return "index";
	}
	
	@RequestMapping("/aboutus")
	public  String about()
	{
		return "aboutus";
	}
	
	
		@RequestMapping("/home")
		public  String homepage(HttpSession session)
		
		{
			session.setAttribute("categories", productService.getAllCategories());
			
			return "index";
		}
		
	
	@RequestMapping("/index")
	public  String homePage1()
	{
		return "index";
	}
	
	@RequestMapping("/contact")
	public  String contact()
	{
		return "contact";
	}
	@RequestMapping("/login")
	public  String login()
	{
		return "login";
	}
	
	
}
