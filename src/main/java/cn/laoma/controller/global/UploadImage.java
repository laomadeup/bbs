package cn.laoma.controller.global;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.laoma.utils.UploadImageUtil;

@ResponseBody
@Controller
@RequestMapping("/user")
public class UploadImage {

	@RequestMapping("/uploadImage")
	public String uploadImage(HttpServletRequest request){
		
		JSONObject json = new JSONObject();
		
		String imgpath = UploadImageUtil.uploadImage(request);
		
		/*if(imgpath == null){
			
			json.put("msg", "上传失败!");
			json.put("success", false);
		}
		
		
		json.put("imgpath", imgpath);
		json.put("success", true);*/
		
		
		return imgpath;
	}
	
	
}
