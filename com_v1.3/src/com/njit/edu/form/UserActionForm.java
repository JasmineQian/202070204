package com.njit.edu.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;


public class UserActionForm extends ActionForm {

	//用户ID
	private int UserId;

	//用户名
	private String UserName;

	//密码
	private String Password;

	//页面第二次输入密码
	private String confirmpassword;

	//邮箱
	private String Email;

	//头像图片地址
	private String Piclink;

	//注册时间
	private Date Registertime;

	//手机号码
	private String Cellphone;

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

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

}
