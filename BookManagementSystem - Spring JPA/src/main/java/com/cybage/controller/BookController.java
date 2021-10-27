package com.cybage.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cybage.model.Author;
import com.cybage.model.Book;
import com.cybage.model.BookAuthorDto;
import com.cybage.service.BookService;

@RestController
public class BookController {
	
	@Autowired
	BookService bookService;
	
	@GetMapping("/getAllBooks")
	public List<Book> getAllEmployees()
	{
		//List<Book> bookList =  bookService.getAllBooks();
		//return new ModelAndView("book" , "bookList" , bookList);
		return bookService.getAllBooks();
	}
	
	@GetMapping("/add")
	public String showAddEmployeeForm(Model model)
	{
		model.addAttribute("bookAuthorDto" , new BookAuthorDto());
		return "addBook";
		
	}
	
	@PostMapping("/add")
	public ModelAndView addBook(@Validated @ModelAttribute("book") BookAuthorDto bookAuthorDto , BindingResult erBindingResult)
	{
		
		if(erBindingResult.hasErrors())
		{
			return new ModelAndView("addBook" , "book" , new Book());
		}
		
		Author author = new Author();
		author.setAuthorName(bookAuthorDto.getAuthorName());
		author.setEmailId(bookAuthorDto.getEmail());
		author.setPhoneNumber(bookAuthorDto.getPhoneNumber());
		
		
		Book book = new Book();
		book.setTitle(bookAuthorDto.getTitle());
		book.setPublisher(bookAuthorDto.getPublisher());
		book.setAuthors(author);
		author.setBook(book);
		bookService.addBook(book);
		
		List<Book> bookList = bookService.getAllBooks();
		return new ModelAndView("book" , "bookList" , bookList);
		
	}
	
	@GetMapping("/edit/{id}")
	public String editEmployee(@PathVariable int id, Model model)
	{
		Optional<Book> book = bookService.getBookById(id);
		model.addAttribute("book" , book);
		return "updateBook";
	}
	
	@PostMapping("/edit")
	public String editPerson(@Valid @ModelAttribute("book") Book book , BindingResult result , Model model)
	{
		if(result.hasErrors())
		{
			return "updateBook";
		}
		System.out.println(book.getBookId());
		bookService.editBook(book);
		model.addAttribute("bookList", bookService.getAllBooks());
		return "book";
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView deleteBook(@PathVariable int id, Model model)
	{
		bookService.deleteBook(id);
		List<Book> bookList =  bookService.getAllBooks();
		return new ModelAndView("book" , "bookList" , bookList);
	}
	
	@PostMapping("/search")
	public ModelAndView searchBook(@Param("title")String title , BindingResult result , Model model)
	{
		List<Book> bookList = bookService.searchBook(title);
		return new ModelAndView("book" , "bookList" , bookList);
	}
}
