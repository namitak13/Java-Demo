package com.cybage.model;

public class BookAuthorDto {
	
	private String  title;
	private String publisher;
	private String email;
	private String authorName;
	private  String phoneNumber;
	
	
	
	public BookAuthorDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public BookAuthorDto(String title, String publisher, String email, String authorName, String phoneNumber) {
		super();
		this.title = title;
		this.publisher = publisher;
		this.email = email;
		this.authorName = authorName;
		this.phoneNumber = phoneNumber;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	@Override
	public String toString() {
		return "BookAuthorDto [title=" + title + ", publisher=" + publisher + ", email=" + email + ", authorName="
				+ authorName + ", phoneNumber=" + phoneNumber + "]";
	}
	
	
}
