package com.jpawebcrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jpawebcrud.model.User;
import com.jpawebcrud.repo.UserRepo;

@Controller
public class UserController {
	@Autowired
	private UserRepo userRepo;
	@RequestMapping("/")
	public String homePage()
	{
		return "home";
	}
	@RequestMapping("/adduser")
	public String registerForm()
	{
		return "register";
	}
	@RequestMapping("/save")
	public String saveUserData(User user,ModelMap model)
	{
		userRepo.save(user);
		return "success";
	}
	
	
	@RequestMapping("/viewusers")
	public String displayAllUserDetails(ModelMap model)
	{
		model.put("users",userRepo.findAll());
		return "viewuser";
	}
	
	@RequestMapping("/deleteUser/{id}")
	public String deleteRecord(@PathVariable int id,ModelMap model)
	{
		userRepo.deleteById(id);
		return "deletemsg";
	}
	
	@RequestMapping("/edituser/{id}")
	public String editForm(@PathVariable int id,ModelMap model)
	{
		model.put("command",userRepo.findById(id).get());
		return "edituser";
	}
	
	@RequestMapping(path="/editu",method=RequestMethod.POST)
	public String editAndSave(User user)
	{
		userRepo.save(user);
		return "redirect:/viewuser";
	}
	
}
