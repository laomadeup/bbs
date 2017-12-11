package cn.laoma.controller;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.laoma.domain.Article;
import cn.laoma.service.IArticleService;



@Controller
@ResponseBody
@RequestMapping("/user")
public class ModifyArticleController {

	
	@Resource
	private IArticleService articleServiceImpl;
	
	@RequestMapping("/modifyArticleAjax")
	public String modifyArticle(Article article){
		
		JSONObject  json = new JSONObject();
		
		System.out.println(article.getTitle()+" ----- "+article.getContent());
		
	/*	if(article == null){
			
			json.put("msg", "传入参数为空!");
			json.put("success", false);
			return json.toString();
			
		}*/
		
		
		if(article.getArticleid() == null){
			json.put("msg", "传入id为空!");
			json.put("success", false);
			return json.toString();
		}
		
		if( StringUtils.isEmpty(article.getTitle())){
			json.put("msg", "传入标题为空!");
			json.put("success", false);
			return json.toString();
			
		}
		
		if( StringUtils.isEmpty(article.getContent())){
			json.put("msg", "传入内容为空!");
			json.put("success", false);
			return json.toString();
			
		}
		
		Boolean flag = articleServiceImpl.modifyArticle(article);
		if(!flag){
			json.put("msg", "修改失败，请联系管理员!");
			json.put("success", false);
			return json.toString();
		}
		
		json.put("msg", "修改成功!");
		json.put("success", true);
		return json.toString();
		
		
	}
	
}
