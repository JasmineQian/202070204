package com.njit.edu.pojo;

import java.util.Date;
import java.util.Set;

public class User {
	
	
	//用户ID
	private int UserId;
	
	//用户名
	private String UserName;
	
	//密码
	private String Password;
	
	//邮箱
	private String Email;
	
	//头像图片地址
	private String Piclink;
	
	//注册时间
	private Date  Registertime;
	
	//手机号码
	private String Cellphone;
	

    
	//双向关联(1:n DownLoad)
	private Set<DownLoad> load;



	public int getUserId() {
		return UserId;
	}



	public void setUserId(int userId) {
		UserId = userId;
	}



	public String getUserName() {
		return UserName;
	}



	public void setUserName(String userName) {
		UserName = userName;
	}



	public String getPassword() {
		return Password;
	}



	public void setPassword(String password) {
		Password = password;
	}



	public String getEmail() {
		return Email;
	}



	public void setEmail(String email) {
		Email = email;
	}



	public String getPiclink() {
		return Piclink;
	}



	public void setPiclink(String piclink) {
		Piclink = piclink;
	}



	public Date getRegistertime() {
		return Registertime;
	}



	public void setRegistertime(Date registertime) {
		Registertime = registertime;
	}



	public String getCellphone() {
		return Cellphone;
	}



	public void setCellphone(String cellphone) {
		Cellphone = cellphone;
	}



	public Set<DownLoad> getLoad() {
		return load;
	}



	public void setLoad(Set<DownLoad> load) {
		this.load = load;
	}
	
	
	
	

	
	
}
