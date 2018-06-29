package com.njit.edu.dao;

import java.util.List;

import com.njit.edu.pojo.User;


public interface UserDao {
	
	//添加用户
   public boolean saveUser(User user);
   
   //删除用户
   public void delUser(User user);
   
   //修改用户
   public void modifyUser(User user);
   
   //按用户ID查找用户
   public User queryUserById(int userId);
   
   //查找所有用户
   public List queryAllUser();
   
   //按用户名查找用户
   public User queryUserByName(String userName);
   
   //批量删除
   public void deleteUsers(String[] userIdList);
   
}
