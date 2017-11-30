package cn.laoma.controller.global;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.laoma.domain.User;
import cn.laoma.service.IUserService;

@ResponseBody
@Controller
@RequestMapping("/user")
public class RegisterAjax {

	@Resource
	private IUserService userServiceImpl;
	
	@RequestMapping("/registerAjax")
	public String register(HttpSession session,User user){
		JSONObject json = new JSONObject();
		
		try {
			if(user == null){
				json.put("msg", "参数为空!");
				json.put("isFail", true);
				return json.toString();
			}
			
			
			String mobile = user.getMobile();
			String password = user.getPassword();
			Short sex = user.getSex();
			
			if (StringUtils.isEmpty(mobile) || StringUtils.isEmpty(password)) {
				json.put("msg", "手机号码或密码为空!");
				json.put("isFail", true);
				return json.toString();
			}
			
			if(sex == null){
				json.put("msg", "性别不能为空");
				json.put("isFail", true);
				return json.toString();
			}
			
			//判断手机号码是否已经注册
			User oldUser = userServiceImpl.getByMobile(mobile);
			
			if(oldUser != null){
				json.put("msg", "该手机号码已注册");
				json.put("isFail", true);
				return json.toString();
			}
			
			Integer userId = userServiceImpl.save(user);//该方法返回的是用户id
			
			System.out.println("userId:"+userId);
			//自动登录,将用户id存入session,需不需要将user实例存入session？
			session.setAttribute("loginUserid", userId);
			json.put("msg", "注册成功");
			json.put("isFail", false);
			return json.toString();
		} catch (Exception e) {
			e.printStackTrace();
			//json.put("msg", e.getStackTrace());
			json.put("isFail", true);

			return json.toString();
		}
		
		
		
		
	}
	
}
