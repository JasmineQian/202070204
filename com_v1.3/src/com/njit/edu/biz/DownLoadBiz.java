package com.njit.edu.biz;

import java.util.List;

import com.njit.edu.pojo.DownLoad;

public interface DownLoadBiz {
	
	
	//下载的时候进行添加记录
	public boolean saveDownLoad(DownLoad load);

	//根据下载的时候id查询下载记录
	public DownLoad queryDownLoadById(int loadId);

	//根据用户id查询下载记录
	public List queryDownLoadByUserId(int UserId);

}
