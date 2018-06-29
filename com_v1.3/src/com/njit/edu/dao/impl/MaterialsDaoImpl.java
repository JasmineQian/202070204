package com.njit.edu.dao.impl;

import java.util.List;

import javax.management.StringValueExp;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.dao.MaterialsDao;
import com.njit.edu.pojo.Materials;

@Transactional
public class MaterialsDaoImpl extends HibernateDaoSupport implements MaterialsDao {
	// 删除资料
	public void delMater(Materials Mater) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(Mater);
	}

	// 更新资料
	public void modifyMater(Materials Mater) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().merge(Mater);
	}

	// 查询所有资料
	public List queryAllMaterialsinfo() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Materials");
	}

	// 根据名称查询
	public Materials queryMaterialsByName(String MaterName) {
		// TODO Auto-generated method stub
		String hql = "from Materials l where l.MaterName=?";
		Query query = this.getSession().createQuery(hql).setParameter(0,
				MaterName);
		// return (Admin) query.uniqueResult();
		return (Materials) query.uniqueResult();
	}

	// 根据资料的Id进行查询
	public Materials queryMaterialsinfoById(int MaterId) {
		// TODO Auto-generated method stub
		return (Materials) this.getHibernateTemplate().get(Materials.class,
				MaterId);
	}

	public List queryMaterialsinfoByMaterChapter(String MaterChapter){
		String hql = "from Materials m where m.MaterChapter=?";
		Query query= this.getSession().createQuery(hql).setParameter(0,
				MaterChapter);
		// return (Admin) query.uniqueResult();
		return query.list();
	}
	// 增加资料
	public boolean saveMater(Materials Mater) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(Mater);
		return true;
	}
	
	//批量删除
	public void deleteMaters(String[] MaterIdList){
		StringBuffer sbfSql = new StringBuffer();
		for (int i = 0; i < MaterIdList.length; i++) {
			sbfSql.append("'")
				.append(MaterIdList[i])
				.append("'")
				.append(",");
		}
		String sql = "delete from t_Materials where MaterId in ("
			+ sbfSql.substring(0, sbfSql.length()-1) + ")";
		Query query=this.getSession().createSQLQuery(sql);
		int i=query.executeUpdate();
		if(i!=0){
			System.out.println("--------删除成功--------");
		}
		
	}

	public List queryTop() {
		// TODO Auto-generated method stub
		String hql="from Materials m order by m.Updatetime desc";
		Query query=this.getSession().createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(10);
		return query.list();
	}

}
