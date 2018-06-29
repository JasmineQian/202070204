package com.njit.edu.pojo;

import java.util.Date;


public class Admin {

	//管理员ID
	private int ManagerId;

	//帐号
	private String ManagerName;

	//用户密码
	private String Password;

	//用户角色
	private boolean Role;
	
	//注册时间
	private Date  Registertime;

	public int getManagerId() {
		return ManagerId;
	}

	public void setManagerId(int managerId) {
		ManagerId = managerId;
	}

	public String getManagerName() {
		return ManagerName;
	}

	public void setManagerName(String managerName) {
		ManagerName = managerName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public boolean isRole() {
		return Role;
	}

	public void setRole(boolean role) {
		Role = role;
	}

	public Date getRegistertime() {
		return Registertime;
	}

	public void setRegistertime(Date registertime) {
		Registertime = registertime;
	}
    
	
}
