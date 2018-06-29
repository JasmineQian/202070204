package com.njit.edu.biz;

import java.util.List;

import com.njit.edu.pojo.Admin;

public interface AdminBiz {

	// 添加用户
	public boolean save(Admin Admin);

	// 删除用户
	public void delete(Admin Admin);

	// 查询所有管理员
	public List queryAll();

	// 修改管理员
	public void modify(Admin Admin);

	// 根据管理员ID查找管理员
	public Admin queryById(int AdminID);

	// 根据管理员名查找管理员
	public Admin queryByName(String AdminName);

}
