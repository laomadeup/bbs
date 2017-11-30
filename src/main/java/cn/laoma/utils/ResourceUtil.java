package cn.laoma.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.springframework.jdbc.support.JdbcUtils;

public class ResourceUtil {

	 private static final Properties props = new Properties();
	 
	    /**
	     * 获取随机码的长度
	     *
	     * @return 随机码的长度
	     */
	    public static String getRandCodeLength(String str) {
	    	
	        InputStream in= JdbcUtils.class.getResourceAsStream(str);
	        try {
				props.load(in);
				return (String) props.get("randCodeLength");
			} catch (IOException e) {
				e.printStackTrace();
				throw new RuntimeException("IOExcepiton");
			}
	    	
	    }

	    /**
	     * 获取随机码的类型
	     *
	     * @return 随机码的类型
	     */
	    public static String getRandCodeType(String str) {
	    	
	        InputStream in= JdbcUtils.class.getResourceAsStream(str);
	        try {
				props.load(in);
				return (String) props.get("randCodeType");
			} catch (IOException e) {
				e.printStackTrace();
				throw new RuntimeException("IOExcepiton");
			}
	    }
}
	
