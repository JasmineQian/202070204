package com.njit.edu.util;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class CreateTable {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Configuration config=new Configuration().configure(); 
		//读取config配置文件中的信息（类映射文件，核心配置文件）
		SchemaExport export= new SchemaExport(config);
		//根据export所读取的数据来创建表结构
		export.create(true, true);
	}
}