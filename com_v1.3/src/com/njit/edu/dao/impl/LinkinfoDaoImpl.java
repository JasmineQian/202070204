package com.njit.edu.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.dao.LinkinfoDao;
import com.njit.edu.pojo.Linkinfo;

@Transactional
public class LinkinfoDaoImpl extends HibernateDaoSupport implements LinkinfoDao {
	
	// 删除链接
	public void delLink(Linkinfo Link) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(Link);
	}

	// 更新链接信息
	public void modifyLink(Linkinfo Link) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().merge(Link);

	}

	// 查询所有链接
	public List queryAllLinkinfo() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Linkinfo");
	}

	// 根据链接的名字查询
	public Linkinfo queryLinkByName(String LinkName) {
		// TODO Auto-generated method stub
		String hql="from Linkinfo l where l.LinkName=?";
		Query query=this.getSession().createQuery(hql).setParameter(0, LinkName);
		return (Linkinfo) query.uniqueResult();
	}

	
	// 查询Linkjude=的所有链接
	public List queryLinkinfoByLinkjude(int Linkjude) {
		// TODO Auto-generated method stub
		String hql="from Linkinfo l where l.Linkjude=?";
		Query query=this.getSession().createQuery(hql).setParameter(0, Linkjude);
		return query.list();
	}

	// 根据链接的ID进行查询
	public Linkinfo queryLinkinfoById(int LinkId) {
		// TODO Auto-generated method stub
		return (Linkinfo) this.getHibernateTemplate().get(Linkinfo.class, LinkId);
	}

	// 添加新的链接
	public boolean saveLink(Linkinfo Link) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(Link);
		return true;
	}

	public void deleteLinkinfos(String[] LinkIdList) {
		// TODO Auto-generated method stub
		StringBuffer sbfSql = new StringBuffer();
		for (int i = 0; i < LinkIdList.length; i++) {
			sbfSql.append("'")
				.append(LinkIdList[i])
				.append("'")
				.append(",");
		}
		String sql = "delete from t_Linkinfo where LinkId in ("
			+ sbfSql.substring(0, sbfSql.length()-1) + ")";
		Query query=this.getSession().createSQLQuery(sql);
		int i=query.executeUpdate();
		if(i!=0){
			System.out.println("--------删除成功--------");
		}
	}
	

}
