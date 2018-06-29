package com.njit.edu.biz.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.biz.AdminBiz;
import com.njit.edu.dao.AdminDao;
import com.njit.edu.pojo.Admin;

@Transactional
public class AdminBizImpl implements AdminBiz {

	private AdminDao adminDao;

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	// 删除管理员
	public void delete(Admin Admin) {
		// TODO Auto-generated method stub
		adminDao.delAdmin(Admin);
	}

	// 修改管理员
	public void modify(Admin Admin) {
		// TODO Auto-generated method stub
		adminDao.modifyAdmin(Admin);
	}

	// 添加管理员
	public boolean save(Admin Admin) {
		// TODO Auto-generated method stub
		return adminDao.saveAdmin(Admin);
	}

	// 查询所有管理员
	public List queryAll() {
		// TODO Auto-generated method stub
		return adminDao.queryAllAdmin();
	}

	// 根据ID查询管理员
	public Admin queryById(int AdminID) {
		// TODO Auto-generated method stub
		return adminDao.queryAdminById(AdminID);
	}

	// 根据姓名查询管理员
	public Admin queryByName(String AdminName) {
		// TODO Auto-generated method stub
		return adminDao.queryAdminByName(AdminName);
	}

}
