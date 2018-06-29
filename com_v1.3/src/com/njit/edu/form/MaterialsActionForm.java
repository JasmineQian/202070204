package com.njit.edu.form;

import java.util.Date;
import java.util.Set;

import org.apache.struts.action.ActionForm;

import com.njit.edu.pojo.DownLoad;

public class MaterialsActionForm extends ActionForm  {
	//资料ID
	private int MaterId;

	//资料所属章节
	private String MaterChapter;

	//资料的名称
	private String MaterName;

	//资料的内容部分
	private String MaterContent;
	
	//是否上传资料
	private boolean  MaterUPload;
	
	 //资料的更新时间
	private Date Updatetime;
	
	private String Way;
	
	//双向关联(1:n DownLoad)
	private Set<DownLoad> load;
	
	private String[] selectFlag;

	public String[] getSelectFlag() {
		return selectFlag;
	}

	public void setSelectFlag(String[] selectFlag) {
		this.selectFlag = selectFlag;
	}

	public int getMaterId() {
		return MaterId;
	}

	public void setMaterId(int materId) {
		MaterId = materId;
	}

	
	public String getMaterChapter() {
		return MaterChapter;
	}

	public void setMaterChapter(String materChapter) {
		MaterChapter = materChapter;
	}

	public String getMaterName() {
		return MaterName;
	}

	public void setMaterName(String materName) {
		MaterName = materName;
	}

	public String getMaterContent() {
		return MaterContent;
	}

	public void setMaterContent(String materContent) {
		MaterContent = materContent;
	}

	public boolean isMaterUPload() {
		return MaterUPload;
	}

	public void setMaterUPload(boolean materUPload) {
		MaterUPload = materUPload;
	}

	public Date getUpdatetime() {
		return Updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		Updatetime = updatetime;
	}

	public String getWay() {
		return Way;
	}

	public void setWay(String way) {
		Way = way;
	}

}
