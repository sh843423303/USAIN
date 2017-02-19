package com.jiyun.entity;

import java.io.Serializable;
import java.sql.Date;

public class Interview implements Serializable {

	private int id;
	private String company_name;
	private String company_address;
	private String company_contacts;
	private String it_name;
	private Date it_time;
	private int user_id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_address() {
		return company_address;
	}
	public void setCompany_address(String company_address) {
		this.company_address = company_address;
	}
	public String getCompany_contacts() {
		return company_contacts;
	}
	public void setCompany_contacts(String company_contacts) {
		this.company_contacts = company_contacts;
	}
	public String getIt_name() {
		return it_name;
	}
	public void setIt_name(String it_name) {
		this.it_name = it_name;
	}
	public Date getIt_time() {
		return it_time;
	}
	public void setIt_time(Date it_time) {
		this.it_time = it_time;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Interview() {
		super();
	}
	public Interview(String company_name, String company_address,
			String company_contacts, String it_name, Date it_time,int user_id) {
		super();
		this.company_name = company_name;
		this.company_address = company_address;
		this.company_contacts = company_contacts;
		this.it_name = it_name;
		this.it_time = it_time;
		this.user_id=user_id;
	}
}
