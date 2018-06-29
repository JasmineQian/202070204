package com.njit.edu.biz.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.biz.LinkinfoBiz;
import com.njit.edu.dao.LinkinfoDao;
import com.njit.edu.pojo.Linkinfo;



@Transactional
public class LinkinfoBizImpl implements LinkinfoBiz {
	// 注入
	private LinkinfoDao linkinfoDao;

	public LinkinfoDao getLinkinfoDao() {
		return linkinfoDao;
	}

	public void setLinkinfoDao(LinkinfoDao linkinfoDao) {
		this.linkinfoDao = linkinfoDao;
	}

	// 删除链接
	public void delLink(Linkinfo Link) {
		// TODO Auto-generated method stub
		linkinfoDao.delLink(Link);
	}
	// 修改链接
	public void modifyLink(Linkinfo Link) {
		// TODO Auto-generated method stub
		linkinfoDao.modifyLink(Link);
		
	}
	// 查询所有链接
	public List queryAllLinkinfo() {
		// TODO Auto-generated method stub
		return linkinfoDao.queryAllLinkinfo();
	}
	// 根据名称查询所有链接
	public Linkinfo queryLinkByName(String LinkName) {
		// TODO Auto-generated method stub
		return linkinfoDao.queryLinkByName(LinkName);
	}
	// 根据ID查询所有链接
	public Linkinfo queryLinkinfoById(int LinkId) {
		// TODO Auto-generated method stub
		return linkinfoDao.queryLinkinfoById(LinkId);
	}
	// 增加链接
	public boolean saveLink(Linkinfo Link) {
		// TODO Auto-generated method stub
		return linkinfoDao.saveLink(Link);
	}
	// 级联删除链接
	public void deleteLinkinfos(String[] LinkIdList) {
		// TODO Auto-generated method stub
		linkinfoDao.deleteLinkinfos(LinkIdList);
	}

	public List queryLinkinfoByLinkjude(int Linkjude) {
		// TODO Auto-generated method stub
		return linkinfoDao.queryLinkinfoByLinkjude(Linkjude);
	}

	
	

    

}
