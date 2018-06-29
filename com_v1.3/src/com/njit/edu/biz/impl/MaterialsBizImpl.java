package com.njit.edu.biz.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.biz.MaterialsBiz;
import com.njit.edu.dao.MaterialsDao;
import com.njit.edu.pojo.Materials;

@Transactional
public class MaterialsBizImpl implements MaterialsBiz {

	private MaterialsDao materDao;

	public void setMaterDao(MaterialsDao materDao) {
		this.materDao = materDao;
	}


	public void delMater(Materials Mater) {
		// TODO Auto-generated method stub
		materDao.delMater(Mater);
	}


	public void modifyMater(Materials Mater) {
		// TODO Auto-generated method stub
		materDao.modifyMater(Mater);
	}


	public List queryAllMaterialsinfo() {
		// TODO Auto-generated method stub
		return materDao.queryAllMaterialsinfo();
	}


	public Materials queryMaterialsByName(String MaterName) {
		// TODO Auto-generated method stub
		return materDao.queryMaterialsByName(MaterName);
	}


	public Materials queryMaterialsinfoById(int MaterId) {
		// TODO Auto-generated method stub
		return materDao.queryMaterialsinfoById(MaterId);
	}


	public boolean saveMater(Materials Mater) {
		// TODO Auto-generated method stub
		return materDao.saveMater(Mater);
	}


	public List queryMaterialsinfoByMaterChapter(String MaterChapter) {
		// TODO Auto-generated method stub
		return materDao.queryMaterialsinfoByMaterChapter(MaterChapter);
	}

	public void deleteMaters(String[] MaterIdList){
		materDao.deleteMaters(MaterIdList);
	}


	public List queryTop() {
		// TODO Auto-generated method stub
		return materDao.queryTop();
	};


	
}
