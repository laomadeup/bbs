package cn.laoma.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.laoma.domain.Article;
import cn.laoma.service.IArticleService;


@Controller
@RequestMapping("/user")
public class BlogContentController {

	@Resource
	private IArticleService articleServiceImpl;
	
	
	@RequestMapping("/blogContent")
	public String getBlogContent(Integer articleId,Integer pageNum,Model model){
		
		//一个问题，如果这个articleId是null的怎么办？判断她为空后怎么传回信息？
		System.out.println("blogcontent articleid:"+articleId);
		
		Article article = articleServiceImpl.getArticleById(articleId);
		model.addAttribute("article", article);
		model.addAttribute("pageNum", pageNum);
		
		return "blogcontent";
	}
	
	
}
