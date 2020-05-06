package com.edu.beans;

public class BookBean {
	private String title;
	private String author;
	private String publisher;
	
	public BookBean() {}
	public BookBean(String t, String a, String p) {
		this.title = t;
		this.author = a;
		this.publisher = p;
	}
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
}
