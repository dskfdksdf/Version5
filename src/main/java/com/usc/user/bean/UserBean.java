package com.usc.user.bean;

import java.io.Serializable;
//�û���
public class UserBean implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer id;
	
	private String username;
	
	private String password;

	public UserBean() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "UserBean{" +
				"id=" + id +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				'}';
	}
}
