package cn.laoma.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.laoma.domain.User;
import cn.laoma.service.IUserService;  
  
@Controller  
@RequestMapping("/user")  
public class UserController {  
    @Resource  
    private IUserService userServiceImpl;  
      
    @RequestMapping("/showUser")  
    public String toIndex(HttpServletRequest request,Model model){  
        int userId = Integer.parseInt(request.getParameter("id"));  
        User user = this.userServiceImpl.getUserById(userId);  
        model.addAttribute("user", user);  
        return "showUser";  
    }  
}  
