package com.cg.capstore.controller;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cg.capstore.dto.Customer;
import com.cg.capstore.service.ICapstoreService;

@Controller
public class CapStoreController 
{
	char character;
	 int ascii;
	@Autowired
	ICapstoreService service;
	  ArrayList<Integer> array=null;
	  String a=null;
	@RequestMapping(value="all")
	public String show()
	{
		return "home";
		
	}
	
	@RequestMapping(value="login")
	public String showLogin()
	{
		return "login";
	}
	
	@RequestMapping(value="merchantLogin")
	public String showMerchant()
	{
		return "merchantLogin";
		
	}
	
	@RequestMapping(value="adminLogin")
	public String showAdmin()
	{
		return "adminLogin";
		
	}
	
	@RequestMapping(value="registration")
	public String register()
	{
		return "registration";
		
	}
	@RequestMapping(value="merchantReg")
	public String registermerchant()
	{
		return "merchantReg";
		
	}
	
	@RequestMapping(value="save",method=RequestMethod.POST)
	public String insertCustomer(@Valid@ModelAttribute("cust") Customer customer,BindingResult result,Model model)
	{String email=null;
	array=new ArrayList<>();
	if(result.hasErrors())
	{
		return "registration";
	}
	else{
	String name=customer.getPassword();
	int length=name.length();
	 for(int i = 0; i < length ; i++){   // while counting characters if less than the length add one        
	         character = name.charAt(i); // start on the first character
	         ascii = (int) character; //convert the first character
	   
	        System.out.println(character+" = "+ ascii); 
	      
	        array.add(ascii+4);
	        
			
	 }
	  a=(array.toString());
	 System.out.println("enter String is"+a);
	 customer.setPassword(a);
	 email=service.addCustomer(customer);
	
		
		
	model.addAttribute("cust", email);
	 return "custRegSuccess";
	 }
	}

	
	/*@RequestMapping(value="retrieve_customer")
	public String fetchCustomer(@ModelAttribute("data") Customer customer,BindingResult result,Model model,@RequestParam("email") String emailId,
			@RequestParam("password") String password)
	{array=new ArrayList<>();
			Customer customere = service.fetchCustomerId(customer.getEmail());
			
			
			String name1=password;
			int length=name1.length();
			 for(int i = 0; i < length ; i++){   // while counting characters if less than the length add one        
			         character = name1.charAt(i); // start on the first character
			         ascii = (int) character; //convert the first character
			    array.add(ascii+4);
			   
			    }
			  a=(array.toString());
			 String n=a;
			
			
			 if(customere==null || customere.getEmail()==null)
			 {
			 model.addAttribute("error","email Id is");
			 return "login";
			 }
			 
			 else if(customere.getEmail().equals(emailId) && customere.getPassword().equals(n))
			{model.addAttribute("email",emailId);
				return "home";
			}
		
			else
			{model.addAttribute("error","invalid credential");
			
			return "login";}
	}
		
		@RequestMapping(value="retrieve_merchant")
	public String fetchMerchant(@ModelAttribute("dataMerchant") Merchant merchant,BindingResult result,Model model,@RequestParam("email") String emailId,
			@RequestParam("password") String password)
	{

	Merchant merchant1 = service.fetchMerchantId(merchant.getEmail());

	if(merchant1==null || merchant1.getEmail()==null)
	{
	model.addAttribute("error","email Id is");
	return "merchantLogin";
	}
	else if(merchant1.getEmail().equals(emailId) && merchant1.getPassword().equals(password))
	{model.addAttribute("email",emailId);
	return "home";
	}
	else
	{model.addAttribute("error","invalid credentials");
	return "merchantLogin";
	}*/
}
