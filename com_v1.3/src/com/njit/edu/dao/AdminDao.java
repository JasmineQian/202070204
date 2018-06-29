package com.njit.edu.dao;

import java.util.List;

import com.njit.edu.pojo.Admin;

public interface AdminDao {

	//添加管理员
	public boolean saveAdmin(Admin Admin);

	//删除管理员
	public void delAdmin(Admin Admin);

	//修改管理员
	public void modifyAdmin(Admin Admin);

	//按管理员ID查找管理员
	public Admin queryAdminById(int AdminId);

	//查找所有管理员
	public List queryAllAdmin();

	//按管理员名查找管理员
	public Admin queryAdminByName(String AdminName);

}
