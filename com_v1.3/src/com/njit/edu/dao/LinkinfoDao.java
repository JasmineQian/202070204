package com.njit.edu.dao;

import java.util.List;

import com.njit.edu.pojo.Linkinfo;

public interface LinkinfoDao {

	//添加链接
	public boolean saveLink(Linkinfo Link);

	//删除链接
	public void delLink(Linkinfo Link);

	//修改链接
	public void modifyLink(Linkinfo Link);
	
	//按ID查找该链接
	public Linkinfo queryLinkinfoById(int LinkId);

	//按Linkjude查找该链接
	public List queryLinkinfoByLinkjude(int Linkjude);
	
	//查找所有链接
	public List queryAllLinkinfo();

	//按链接名称查找链接
	public Linkinfo queryLinkByName(String LinkName);
	
	//按照勾选的几个删除链接
	public void deleteLinkinfos(String[] LinkIdList);

}
