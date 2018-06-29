package com.njit.edu.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.dao.AdminDao;
import com.njit.edu.pojo.Admin;

@Transactional
public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {

	// 添加管理员
	public boolean saveAdmin(Admin Admin) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(Admin);
		return true;
	}

	// 删除管理员
	public void delAdmin(Admin Admin) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(Admin);
	}

	// 修改管理员
	public void modifyAdmin(Admin Admin) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(Admin);
	}

	// 查询所有管理员
	public List queryAllAdmin() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Admin");
	}

	// 按管理员ID查询管理员
	public Admin queryAdminById(int AdminID) {
		// TODO Auto-generated method stub
		return (Admin) this.getHibernateTemplate().get(Admin.class, AdminID);
	}
	// 按管理员名称查询管理员
	public Admin queryAdminByName(String AdminName) {
		// TODO Auto-generated method stub
		String hql = "from Admin c where c.ManagerName=?";
		Query query = this.getSession().createQuery(hql).setParameter(0,
				AdminName);
		return (Admin) query.uniqueResult();
	}

}
