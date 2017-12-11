package cn.laoma.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.laoma.domain.Article;
import cn.laoma.service.IArticleService;

@ResponseBody
@Controller
@RequestMapping("/user")
public class AddArticleAjax {

	@Resource
	private IArticleService articleServiceImpl;
	
	@RequestMapping("/addArticleAjax")
	public String addArticleAjax(String title,String articlecontent,HttpSession session){
		
		JSONObject json = new JSONObject();
		try {
			
			System.out.println("title:"+title+"  articlecontent:"+articlecontent);
			
			if(StringUtils.isEmpty(title)){
				json.put("msg", "标题为空!");
				json.put("success", false);
				return json.toString();
			}
			
			if(StringUtils.isEmpty(articlecontent)){
				json.put("msg", "内容为空!");
				json.put("success", false);
				return json.toString();
			}
			
			Integer loginUserId = (Integer) session.getAttribute("loginUserid");
			
			Article article = new Article();
			article.setTitle(title);
			article.setContent(articlecontent);
			article.setUserid(loginUserId);
			
			Integer articleId = articleServiceImpl.save(article);
			System.out.println("addArticle articleId:"+articleId);
			json.put("msg", "保存为空!");
			json.put("success", true);
			return json.toString();
			
		} catch (Exception e) {
			e.printStackTrace();
			
			json.put("msg", "保存失败，联系管理员!");
			json.put("success", false);
			return json.toString();
		}
	}
	
}
