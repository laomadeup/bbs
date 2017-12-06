package cn.laoma.dao;

import cn.laoma.domain.Article;
import cn.laoma.domain.ArticleExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface IArticleDao {
    long countByExample(ArticleExample example);

    int deleteByExample(ArticleExample example);

    int deleteByPrimaryKey(Integer articleid);

    int insert(Article record);

    int insertSelective(Article record);

    List<Article> selectByExample(ArticleExample example);
    
    public List<Article> getAllArticle();

    Article selectByPrimaryKey(Integer articleid);

    int updateByExampleSelective(@Param("record") Article record, @Param("example") ArticleExample example);

    int updateByExample(@Param("record") Article record, @Param("example") ArticleExample example);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKey(Article record);

	List<Article> getArticlesByUserId(@Param("userid")Integer userid);
}