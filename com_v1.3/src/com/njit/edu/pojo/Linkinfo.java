package com.njit.edu.pojo;

import java.util.Date;

public class Linkinfo {
	
	//链接编号
	private int LinkId;
	
	//链接名称
	private String LinkName;
	
	//链接URL
	private String LinkURL;
	
	//是普通链接的网页还是链接的视频地址进行判断
	private int Linkjude;
	
	//最后一次更新的时间
	private Date UpdateTime;

	public int getLinkId() {
		return LinkId;
	}

	public void setLinkId(int linkId) {
		LinkId = linkId;
	}

	public String getLinkName() {
		return LinkName;
	}

	public void setLinkName(String linkName) {
		LinkName = linkName;
	}

	public String getLinkURL() {
		return LinkURL;
	}

	public void setLinkURL(String linkURL) {
		LinkURL = linkURL;
	}


	public int getLinkjude() {
		return Linkjude;
	}

	public void setLinkjude(int linkjude) {
		Linkjude = linkjude;
	}

	public Date getUpdateTime() {
		return UpdateTime;
	}

	public void setUpdateTime(Date updateTime) {
		UpdateTime = updateTime;
	}


}
