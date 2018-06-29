package com.njit.edu.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.dao.DownLoadDao;
import com.njit.edu.pojo.DownLoad;
@Transactional
public class DownLoadDaoImpl extends HibernateDaoSupport implements DownLoadDao {
	//根据Id进行查询，这主要是为了之后用户查找自己的下载资料
	public DownLoad queryDownLoadById(int loadId) {
		// TODO Auto-generated method stub
		return (DownLoad) this.getHibernateTemplate().get(DownLoad.class, loadId);
	}

	//增加下载的记录
	public boolean saveDownLoad(DownLoad load) {
		// TODO Auto-generated method stub
		 this.getHibernateTemplate().save(load);
		 return true;
	}

	public List queryDownLoadByUserId(int UserId) {
		// TODO Auto-generated method stub
		String hql="from DownLoad d where d.user.UserId=?";
		Query query=this.getSession().createQuery(hql).setParameter(0, UserId);
		return query.list();
	}

}
