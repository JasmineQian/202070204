package com.njit.edu.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;

public class LinkinfoActionForm extends ActionForm {
   
	//链接编号
	private int LinkId;
	
	//链接名称
	private String linkName;
	
	//链接URL
	private String linkURL;
	
	//是普通链接的网页还是链接的视频地址进行判断
	private int linkjude;
	
	//最后一次更新的时间
	private Date UpdateTime;
	
	private String[] selectFlag;

	public String[] getSelectFlag() {
		return selectFlag;
	}

	public void setSelectFlag(String[] selectFlag) {
		this.selectFlag = selectFlag;
	}

	public int getLinkId() {
		return LinkId;
	}

	public void setLinkId(int linkId) {
		LinkId = linkId;
	}

	public String getLinkName() {
		return linkName;
	}

	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}

	public String getLinkURL() {
		return linkURL;
	}

	public void setLinkURL(String linkURL) {
		this.linkURL = linkURL;
	}

	public int getLinkjude() {
		return linkjude;
	}

	public void setLinkjude(int linkjude) {
		this.linkjude = linkjude;
	}

	public Date getUpdateTime() {
		return UpdateTime;
	}

	public void setUpdateTime(Date updateTime) {
		UpdateTime = updateTime;
	}


}
