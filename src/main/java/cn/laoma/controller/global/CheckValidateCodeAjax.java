package cn.laoma.controller.global;

import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@ResponseBody//声明该方法返回json格式
@Controller 
@RequestMapping("/user")  
public class CheckValidateCodeAjax {

	@Value("randCode")//为sessionAttribute变量注入值
	private String sessionAttribute;
	
	@RequestMapping(value = "/checkValidateCodeAjax", method = { RequestMethod.POST,
			RequestMethod.GET })
	public String checkValidateCode(HttpSession session,String code,Model  model){
		
		String validateCode = (String) session.getAttribute(sessionAttribute);
		System.out.println("validateCode:"+validateCode);
		boolean isEqual = false;
		if(code != null && !"".equals(code) && code.equals(validateCode)) isEqual = true;
		JSONObject equalJSON = new JSONObject();
		try {
			equalJSON.put("isEqual", isEqual);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		model.addAttribute("code", code);
		return equalJSON.toString();
	}
	
	
}
