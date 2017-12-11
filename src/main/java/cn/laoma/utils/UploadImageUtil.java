package cn.laoma.utils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

public class UploadImageUtil {

	
	
	/**
	 * 上传一张图片；
	 * */
	public static String uploadImage(HttpServletRequest request){
		long  startTime=System.currentTimeMillis();
		
		String path = null;
		String otherpartpath = null;
		String  uploadfilePath = null;//上传文件后处理过得路径
		 try {
	        //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
	       CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
	       request.getSession().getServletContext());
	       //检查form中是否有enctype="multipart/form-data"
	       if(multipartResolver.isMultipart(request))
	       {
	           //将request变成多部分request
	           MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
	          //获取multiRequest 中所有的文件名
	           Iterator iter=multiRequest.getFileNames();
	           
	           
	           // 获取上传文件存放的 目录 , 无则创建
	           String partPath = "/upload/" +DateUtil.format(new Date(), "yyyyMMdd");
	           String configPath = request.getSession().getServletContext().getRealPath( "/upload/" +DateUtil.format(new Date(), "yyyyMMdd") );
		      
	           // 创建文件夹
		       File filePath = new File(configPath);
		       if (!filePath.exists()) {
		    	   filePath.mkdirs();
		       }
	           
	           // fileName = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/upload/"+ DateUtil.format(new Date(), "yyyyMMdd");
	            
	           while(iter.hasNext())
	           {
	               //一次遍历所有文件
	               MultipartFile file=multiRequest.getFile(iter.next().toString());
	               if(file!=null)
	               {
	            	   otherpartpath = System.currentTimeMillis() + file.getOriginalFilename();
	            	   path = configPath + otherpartpath;
	                   //上传 
	                   file.transferTo(new File(path));
	               }
	                
	           }
	          
	           //处理路径问题
	           //String indeOfpath = path.lastIndexOf("ssm");
	          /* System.out.println(path.substring(path.lastIndexOf("ssm")));
	           System.out.println(path.lastIndexOf("ssm"));*/
	           
	           uploadfilePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+request.getContextPath()+partPath+otherpartpath;
	           //System.out.println("uploadfilePath:"+uploadfilePath);
	       }
	       long  endTime=System.currentTimeMillis();
	       System.out.println("方法三的运行时间："+String.valueOf(endTime-startTime)+"ms");
	       
	       if(StringUtils.isEmpty(path)){
	    	   
	    	   return null;
	       }
	       
	       
	       return uploadfilePath;
       
		 } catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			return null;
		}
		
		
	}
	
	
}
