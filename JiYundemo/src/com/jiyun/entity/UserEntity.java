package com.jiyun.entity;

import java.io.Serializable;
import java.sql.Date;

public class UserEntity implements Serializable {

	private int user_id;
	private String user_name;
	private String user_password;
	private Date user_createtime;
	private String role_name;
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public Date getUser_createtime() {
		return user_createtime;
	}
	public void setUser_createtime(Date user_createtime) {
		this.user_createtime = user_createtime;
	}
	
}
