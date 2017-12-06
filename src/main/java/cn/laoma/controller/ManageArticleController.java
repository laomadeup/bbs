package cn.laoma.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.laoma.domain.Article;
import cn.laoma.service.IArticleService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
@RequestMapping("/user")
public class ManageArticleController {

	@Resource
	private IArticleService articleServiceImpl;
	
	
	@RequestMapping("manageArticle")
	public String manageArticle(@RequestParam(value="pageNum",defaultValue="1")int pageNum,Model model,HttpSession session){
		
		try {
			
			Integer loginUserId = (Integer) session.getAttribute("loginUserid");
			//传入页码，与每页的大小（即每页几条数据）
			PageHelper.startPage(pageNum, 5);
			//startPage后面紧跟的查询就是一个分页查询
			//取出当前用户的文章
			List<Article> articles = articleServiceImpl.getAllArticleById(loginUserId);
			//用PageInfo对结果进行包装,传入连续显示的页数
			PageInfo page = new PageInfo(articles,5);
			
			
			
			//System.out.println(page.getpa);
			
			
			
			model.addAttribute("loginUserId", loginUserId);
			model.addAttribute("pageInfo", page);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return "managearticle";
	}
	
}
