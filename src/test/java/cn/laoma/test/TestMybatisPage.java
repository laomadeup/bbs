package cn.laoma.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.laoma.domain.Article;
import cn.laoma.domain.ArticleExample;
import cn.laoma.service.IArticleService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestMybatisPage {

	@Resource
	private IArticleService articleServiceImpl;
	
	@Test
	public void testMybatisPage(){
		
		
		/*
		 * 
		 * 
		 * 原始的物理分页查询
		ArticleExample ae = new ArticleExample();
		
		ae.setLimit(5);
		ae.setStart(0);
		List<Article> articles = articleDao.selectByExample(ae);
		
		System.out.println(articles.size());
		
		for(int i = 0 ; i<articles.size();i++){
			Article article = articles.get(i);
			System.out.println("articleId:"+article.getArticleid()+"   articleTitle:"+article.getTitle());
		}*/
		
		
		
		
		//articleServiceImpl.getArticleWithPage();
		
		
	}
	
	
}
