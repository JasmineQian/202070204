package com.njit.edu.form;

import org.apache.struts.action.ActionForm;

public class AdminActionForm extends ActionForm {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// 管理员ID
	private int ManagerId;

	// 帐号
	private String ManagerName;

	private String Old;
	// 用户密码
	private String Password;

	private String Password1;

	// 用户角色
	private boolean Role;

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

	public String getPassword1() {
		return Password1;
	}

	public void setPassword1(String password1) {
		Password1 = password1;
	}

	public String getOld() {
		return Old;
	}

	public void setOld(String old) {
		Old = old;
	}

}
