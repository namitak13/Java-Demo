package com.cybage.service;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybage.dao.BookRepository;
import com.cybage.model.Book;

@Service
public class BookService {
	
	private List<Book> bookList;
	
	@Autowired
	private BookRepository bookRepository;
	
	public BookService() {
		super();
		// TODO Auto-generated constructor stub
		bookList = new ArrayList<Book>();
		bookList.add(new Book(1 , "The Green Mile" , "Stephan King" , "WB")); 
	}
	
	public List<Book> getAllBooks()
	{
		return bookRepository.findAll();
		
	}

	public void addBook(@Valid Book book) {
		// TODO Auto-generated method stub
		bookRepository.save(book);
	}

	public Optional<Book> getBookById(int id) {
		// TODO Auto-generated method stub
		return  bookRepository.findById(id);
	}
	
	public int getIndexBook(int id)
	{
		Book updatedBook = null;
		for(Book book : bookList)
		{
			if(book.getBookId() == id)
			{
				updatedBook = book;
				break;
			}
		}
		return bookList.indexOf(updatedBook);
	}
	
	
	public void editBook(Book book)
	{
		Book existingBook = bookRepository.getById(book.getBookId());
		existingBook.setTitle(book.getTitle());
		existingBook.setPublisher(book.getPublisher());
		bookRepository.save(existingBook);
	}

	public void deleteBook(int id) {
		// TODO Auto-generated method stub
		bookRepository.deleteById(id);
	}

	public List<Book> searchBook(String name) {
		// TODO Auto-generated method stub
		List<Book> nameFilterList = bookRepository.findByTitle(name);
		return nameFilterList;
	}
}
