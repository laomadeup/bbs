package cn.laoma.serviceimpl;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import cn.laoma.dao.IArticleDao;
import cn.laoma.domain.Article;
import cn.laoma.service.IArticleService;

@Service("articleServiceImpl")
public class ArticleServiceImpl implements IArticleService {

	private static Logger logger = Logger.getLogger(ArticleServiceImpl.class);
	@Resource
	private IArticleDao articleDao;
	
	
	@Override
	public List<Article> getAllArticle() {
		
		List<Article> articles = this.articleDao.getAllArticle();
		if(articles.size()>0){
			return articles;
		}
		
		return null;
	}


	@Override
	public List<Article> getArticleByCondition(String title) {
		
		
		
		
		
		return null;
	}


	@Override
	public Article getArticleById(Integer articleId) {
		if(articleId == null){
			logger.error("传入的id为空!");
			return null;
		}
		
		Article article = this.articleDao.selectByPrimaryKey(articleId);
		if(article == null){
			return null;
		}
		Article model = new Article();
		try {
			BeanUtils.copyProperties(model, article);
		} catch (IllegalAccessException | InvocationTargetException e) {
			
			e.printStackTrace();
		}
		
		return model;
	}


	@Override
	public List<Article> getAllArticleById(Integer userId) {
		
		if(userId == null){
			logger.error("传入的Id为空！");
			throw new RuntimeException("传入的Id为空");
		}
		
		List<Article> articles = this.articleDao.getArticlesByUserId(userId);
		
		if(articles == null || articles.size() <= 0){
			logger.error("该用户还没有文章");
			return null;
		}
		
		return articles;
		
	}

}
