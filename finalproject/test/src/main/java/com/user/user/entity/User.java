package com.user.user.entity;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

public class User {
	private int id;
	private String user_id;
	private String password;
	private String email;
	private String email2;
	private String totalemail;
	private String name;
	@DateTimeFormat(pattern= "yyyy-MM-dd")
	private LocalDate birth_date;
	private String phone_number;
	private int authorized;
	
	public User() { }

	public User(int id, String user_id, String password, String email, String email2, String name, LocalDate birth_date,
			String phone_number, int authorized) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.password = password;
		this.email = email;
		this.email2 = email2;
		this.name = name;
		this.birth_date = birth_date;
		this.phone_number = phone_number;
		this.authorized = authorized;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(LocalDate birth_date) {
		this.birth_date = birth_date;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public int getAuthorized() {
		return authorized;
	}

	public void setAuthorized(int authorized) {
		this.authorized = authorized;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getTotalemail() {
		return totalemail;
	}

	public void setTotalemail(String totalemail) {
		this.totalemail = totalemail;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", id=" + id + ", password=" + password + ", email=" + email + ", email2="
				+ email2 + ", totalemail=" + totalemail + ", name=" + name + ", birth_date=" + birth_date
				+ ", phone_number=" + phone_number + ", authorized=" + authorized + "]";
	}
	
	
	
	
	
	
	
	

}
