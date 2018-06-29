package com.njit.edu.biz.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.biz.UserBiz;
import com.njit.edu.dao.UserDao;
import com.njit.edu.pojo.User;

@Transactional
public class UserBizImpl implements UserBiz{

	private UserDao userDao;

	//注入
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	//删除用户
	public void delete(User user) {
		// TODO Auto-generated method stub
		userDao.delUser(user);
	}

	//查询所有用户
	public List queryAll() {
		// TODO Auto-generated method stub
		return userDao.queryAllUser();
	}

	//按用户ID查找用户
	public User queryById(int userID) {
		// TODO Auto-generated method stub
		return userDao.queryUserById(userID);
	}

	//添加用户
	public boolean save(User user) {
		// TODO Auto-generated method stub
		return userDao.saveUser(user);
	}

	//修改用户
	public void modify(User user) {
		// TODO Auto-generated method stub
		userDao.modifyUser(user);
	}

	public User queryByName(String userName) {
		// TODO Auto-generated method stub
		return userDao.queryUserByName(userName);
	}

	public void deleteUsers(String[] userIdList) {
		// TODO Auto-generated method stub
		userDao.deleteUsers(userIdList);
	}

}
