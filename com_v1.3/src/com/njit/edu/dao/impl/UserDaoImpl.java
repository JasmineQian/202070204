package com.njit.edu.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.dao.UserDao;
import com.njit.edu.pojo.User;


@Transactional
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

	//添加用户
	public boolean saveUser(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(user);
		return true;
	}

	//删除用户
	public void delUser(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(user);
	}

	//修改用户
	public void modifyUser(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(user);
	}

	//查询所有用户
	public List queryAllUser() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from User");
	}

	//按用户ID查询用户
	public User queryUserById(int userID) {
		// TODO Auto-generated method stub
		return (User) this.getHibernateTemplate().get(User.class, userID);
	}

	public User queryUserByName(String userName) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.UserName=?";
		Query query = this.getSession().createQuery(hql).setParameter(0, userName);
		return (User)query.uniqueResult();
	}

	public void deleteUsers(String[] userIdList) {
		// TODO Auto-generated method stub
		StringBuffer sbfSql = new StringBuffer();
		for (int i = 0; i < userIdList.length; i++) {
			sbfSql.append("'")
				.append(userIdList[i])
				.append("'")
				.append(",");
		}
		String sql = "delete from User where userId in ("
			+ sbfSql.substring(0, sbfSql.length()-1) + ")";
		Query query=this.getSession().createSQLQuery(sql);
		int i=query.executeUpdate();
		if(i!=0){
			System.out.println("--------删除成功--------");
		}
		
	}

}
