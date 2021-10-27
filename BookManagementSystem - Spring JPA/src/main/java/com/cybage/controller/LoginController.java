package com.cybage.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cybage.model.Book;
import com.cybage.model.User;
import com.cybage.service.BookService;
import com.cybage.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	@Autowired
	BookService bookService;
	
	@GetMapping("/Login")
	public String showLoginForm(Model model)
	{
		model.addAttribute("user" , new User());
		return "Login";
		
	}
	
	@PostMapping("/Login")
	public ModelAndView checkUser(@Valid @ModelAttribute("user")User user , BindingResult erBindingResult)
	{
		
		if(erBindingResult.hasErrors())
		{
			return new ModelAndView("Login" , "user" , new User());
		}
		System.out.println(user);
		boolean check = loginService.checkUser(user);
		System.out.println(check);
		if(check)
		{
			List<Book> bookList =  bookService.getAllBooks();
			return new ModelAndView("book" , "bookList" , bookList);
		}
		else
		{
			return new ModelAndView("Login" , "user" , new User());
		}
		
	}
}
