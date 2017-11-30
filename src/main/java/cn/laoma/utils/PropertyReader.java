package cn.laoma.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.commons.lang.StringUtils;
import org.springframework.jdbc.support.JdbcUtils;

public class PropertyReader {
	
	public static String getPropertiesURL(String str){
		if(StringUtils.isEmpty(str)){
			throw new RuntimeException("参数为空");
		}
		Properties props=new Properties();
        InputStream in= JdbcUtils.class.getResourceAsStream(str);
        try {
			props.load(in);
			String  url=(String) props.get("url");
			return url;
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("IOExcepiton");
		}
	}
}
