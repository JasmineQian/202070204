package com.njit.edu.biz;

import java.util.List;

import com.njit.edu.pojo.User;


public interface UserBiz {
	
	//添加用户
	public boolean save(User user);
	
	//删除用户
	public void delete(User user);
	
	//查询所有用户
	public List queryAll();
	
	//修改用户
	public void modify(User user);
	
	//根据用户ID查找用户
	public User queryById(int userID);
	
	//根据用户名查找用户
	public User queryByName(String userName);
	
	 //批量删除
	   public void deleteUsers(String[] userIdList);

}
