package cn.laoma.service;

import java.util.List;

import cn.laoma.domain.Article;

public interface IArticleService {

	/**
	 * 查询所有的文章信息
	 * */
	public List<Article> getAllArticle();
	
	/**
	 * 根据条件查询所有的文章信息
	 * */
	public List<Article> getArticleByCondition(String title);

	/**
	 * 根据文章Id获取文章
	 * */
	
	public Article getArticleById(Integer articleId);

	/**
	 * 根据用户Id获取文章
	 * */
	public List<Article> getAllArticleById(Integer userId);

	
}
