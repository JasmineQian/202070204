package com.njit.edu.biz;

import java.util.List;

import com.njit.edu.pojo.Materials;

public interface MaterialsBiz {

	//添加资料
	public boolean saveMater(Materials Mater);

	//删除资料
	public void delMater(Materials Mater);

	//修改资料
	public void modifyMater(Materials Mater);
	
	//按ID查找该资料
	public Materials queryMaterialsinfoById(int MaterId);

	//查找所有资料
	public List queryAllMaterialsinfo();

	//按资料名称查找资料
	public Materials queryMaterialsByName(String MaterName);
	
	//按资料章节查找资料
	public List queryMaterialsinfoByMaterChapter(String MaterChapter);
	
	//根据传进来的checkbox级联删除资料
	public void deleteMaters(String[] MaterIdList);

	//查询最新更新的十个资料
	public List queryTop();
}
