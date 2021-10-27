package com.cybage.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="Book")
public class Book {
	
	//@NotNull(message = "BookId should not be empty")
	@Id
	@GeneratedValue
	int bookId;
	//@NotEmpty(message = "employee Name should not be empty")
	//@Size(min=3 , max=20)
	@Column(name="title")
	String title;

	@Column(name="publisher")
	String publisher;
	
	@OneToMany(mappedBy="book",cascade=CascadeType.ALL,fetch=FetchType.EAGER)	
	private List<Author> authors = new ArrayList<>();
	
	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(int bookId, String title, String author, String publisher) {
		super();
		this.bookId = bookId;
		this.title = title;
		this.publisher = publisher;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public List<Author> getAuthors() {
		return authors;
	}
	public void setAuthors(Author author) {
		this.authors.add(author);
	}
	
	
}
