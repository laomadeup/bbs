package cn.laoma.controller.global;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*@ResponseBody*/
@Controller
@RequestMapping("/user")
public class LoginOut {

	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session){
		
		JSONObject json = new JSONObject();
		
		session.removeAttribute("loginUserid");
		session.removeAttribute("loginUser");
		
		json.put("msg", "退出成功!");
		json.put("success", true);
		return "login";
	}
	
	
}
