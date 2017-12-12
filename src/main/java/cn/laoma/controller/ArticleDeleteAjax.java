package cn.laoma.controller;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.laoma.service.IArticleService;


@Controller
@ResponseBody
@RequestMapping("/user")
public class ArticleDeleteAjax {

	@Resource
	private IArticleService articleServiceImpl;
	
	@RequestMapping("/articleDelete")
	public String deleteArticle(Integer articleId){
		
		JSONObject json = new JSONObject();
		
		if(articleId == null){
			json.put("msg", "参数为空!");
			json.put("success",false);
			return json.toString();
		}
		
		
		Boolean isflag = articleServiceImpl.deleteArticleById(articleId);
		
		if(!isflag){
			json.put("msg", "删除失败请联系管理员!");
			json.put("success",false);
			return json.toString();
		}
		json.put("msg", "删除成功!");
		json.put("success",true);
		return json.toString();
	}
	
	
	
}
