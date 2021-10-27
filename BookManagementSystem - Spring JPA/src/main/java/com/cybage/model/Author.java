package com.cybage.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="author")
public class Author {
	
	@Id
	private String emailId;
	@Column(name="name")
	private String authorName;
	@Column(name="number")
	private String phoneNumber;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="book_id")
	private Book book;
	
	public Author() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Book getBook() {
		return book;
	}



	public void setBook(Book book) {
		this.book = book;
	}



	public Author(String emailId, String authorName, String phoneNumber) {
		super();
		this.emailId = emailId;
		this.authorName = authorName;
		this.phoneNumber = phoneNumber;
	}



	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
}
