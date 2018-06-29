package com.njit.edu.pojo;

import java.util.Date;


public class DownLoad {

	//下载编号
	private int DownloadId;

	//添加资料
	private Materials mater ;

	//用户添加
	private User user;

	//下载时间
	private Date Loadtime;

	public int getDownloadId() {
		return DownloadId;
	}

	public void setDownloadId(int downloadId) {
		DownloadId = downloadId;
	}

	public Materials getMater() {
		return mater;
	}

	public void setMater(Materials mater) {
		this.mater = mater;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getLoadtime() {
		return Loadtime;
	}

	public void setLoadtime(Date loadtime) {
		Loadtime = loadtime;
	}

	
}
