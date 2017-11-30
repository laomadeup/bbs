package cn.laoma.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller 
@RequestMapping("/user") 
public class IndexController {

	@RequestMapping("/index")
	public String login(HttpServletRequest request,Model model){
		
		System.out.println("this is index request return login.jsp");
		
		
		
		return "bloglist";
	}
	
	
	
}
