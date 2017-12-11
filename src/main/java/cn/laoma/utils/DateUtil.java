package cn.laoma.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang.StringUtils;

public class DateUtil {
	
	private static String defaultPattern = "yyyy/MM/dd";

	public static String format(Date date,String str){
		
		if(date == null){
			throw new RuntimeException("传入的日期为空");
		}
		
		if(StringUtils.isEmpty(str)){
			str = defaultPattern;
		}
		SimpleDateFormat format = new SimpleDateFormat(str);
		
		return format.format(date);
	}
	
	
}
