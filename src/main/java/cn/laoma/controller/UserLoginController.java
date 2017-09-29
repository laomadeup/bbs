package cn.laoma.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserLoginController {

	@RequestMapping("/userLogin")
	public String userLogin(HttpServletRequest request,Model model) {
		
		
		
		return "";
	}
	
}
