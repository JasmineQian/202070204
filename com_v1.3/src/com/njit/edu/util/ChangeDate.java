package com.njit.edu.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ChangeDate {

	public static Date changeDate(String str){
	    Date d=new Date();
		try{
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		 d=sdf.parse(str);
		}catch(Exception e){
			e.printStackTrace();
		}
	    return d;
	}


}
