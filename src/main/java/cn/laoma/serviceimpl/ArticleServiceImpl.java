package cn.laoma.serviceimpl;

import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.StringUtils;
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


	@Override
	public Integer save(Article article) {
		
		if(article == null){
			logger.error("传入参数为空!");
			throw new RuntimeException("传入参数为空");
		}
		
		if(article.getUserid() == null){
			logger.error("用户Id不存在");
			throw new RuntimeException("用户不存在");
		}
		
		if(StringUtils.isEmpty(article.getTitle())){
			logger.error("文章标题为空!");
			throw new RuntimeException("传入的标题为空!");
		}
		
		if(StringUtils.isEmpty(article.getContent())){
			logger.error("文章内容为空!");
			throw new RuntimeException("文章内容为空!");
		}
		//默认展示文章
		if(article.getShowstatus() == null ){
			article.setShowstatus(Short.valueOf("1"));
		}
		//默认不支持评论
		if(article.getIsdiscuss() == null){
			article.setIsdiscuss(Short.valueOf("-1"));
		}
		
		article.setCreatetime(new Date().getTime());
		article.setUpdatetime(new Date().getTime());
		
		//当做文章类型时，这里要查看文章类型存不存在？
		
		//该处放回的是插入的成功数
		int count = this.articleDao.insert(article);
		
		Integer articleId = article.getArticleid();
		
		System.out.println("articleServiceImpl articleId:"+articleId);
		
		return articleId;
	}


	@Override
	public Boolean modifyArticle(Article article) {
		
		if(article == null){
			logger.error("传入参数为空!");
			return null;
		}
		
		if(article.getArticleid() == null){
			logger.error("传入id为空!");
			return null;
		}
		
		if( StringUtils.isEmpty(article.getTitle())){
			logger.error("传入标题为空!");
			return null;
		}
		
		if( StringUtils.isEmpty(article.getContent())){
			logger.error("传入内容为空!");
			return null;
		}
		
		Integer articleId = article.getArticleid();
		Article oldArticle = this.articleDao.selectByPrimaryKey(articleId);
		
		oldArticle.setTitle(article.getTitle());
		oldArticle.setContent(article.getContent());
		oldArticle.setUpdatetime(new Date().getTime());
		
		Integer count = this.articleDao.updateByPrimaryKey(oldArticle);
		System.out.println("Modify article count:"+count);
		if(count < 0){
			return false;
		}
		return true;
	}

}
