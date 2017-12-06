package cn.laoma.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
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
public class BlogListController {

	@Resource
	private IArticleService articleServiceImpl;
	
	
	@RequestMapping("/blogList")
	public String blogList(@RequestParam(value="pageNum",defaultValue="1")Integer pageNum,Article article,Model model){
		
		//传入页码，与每页的大小（即每页几条数据）
		PageHelper.startPage(pageNum, 5);
		//startPage后面紧跟的查询就是一个分页查询
		List<Article> articles = articleServiceImpl.getAllArticle();
		//用PageInfo对结果进行包装,传入连续显示的页数
		PageInfo page = new PageInfo(articles,5);
		System.out.println(page.getPageNum());
	    System.out.println(page.getPageSize());
	    System.out.println(page.getStartRow());
	    System.out.println(page.getEndRow());
	    System.out.println(page.getTotal());
	    System.out.println(page.getPages());
	    System.out.println(page.isHasPreviousPage());
	    System.out.println(page.isHasNextPage());
		//测试PageInfo全部属性
		model.addAttribute("pageInfo", page);
		
		return "bloglist";
	}
	
	
	
}
