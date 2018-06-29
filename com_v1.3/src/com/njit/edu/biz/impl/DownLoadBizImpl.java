package com.njit.edu.biz.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.njit.edu.biz.DownLoadBiz;
import com.njit.edu.dao.DownLoadDao;
import com.njit.edu.pojo.DownLoad;
import com.njit.edu.pojo.User;

@Transactional
public class DownLoadBizImpl implements DownLoadBiz {

	private DownLoadDao loadDao;

	public void setLoadDao(DownLoadDao loadDao) {
		this.loadDao = loadDao;
	}

	public DownLoad queryDownLoadById(int loadId) {
		// TODO Auto-generated method stub
		return loadDao.queryDownLoadById(loadId);

	}

	public boolean saveDownLoad(DownLoad load) {
		// TODO Auto-generated method stub
		return loadDao.saveDownLoad(load);
	}

	public List queryDownLoadByUserId(int UserId) {
		// TODO Auto-generated method stub
		return loadDao.queryDownLoadByUserId(UserId);
	}

}
