<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/WEB-INF/jsp/common/domain.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/common/head.jsp"></jsp:include>

		<div class="container">
			<div class="managecontentbox">
				<div class="row">
					<div class="col-md-3 usercontent">
						<div class="userinfo">
							<span>个人资料</span>
						</div>
						<div class="blog_userface">
						</div>
						<div class="blog_username">
							<!-- http://my.csdn.net/ma155211 -->
							<span><a href="javascript:void(0)" class="user_name" >浮生若尘ma</a></span>	
						</div>
						<div class="clear" >
							
						</div>
						
						<div class="addArticle">
							<span class="glyphicon glyphicon-plus"></span>
							<a href="${baseUrl}/user/AddArticle.do">增加文章</a>
						</div>
					</div>
					<div class="col-md-1">
						
					</div>
					<div class="col-md-8 articlecontent">
						
						<div class="article_list">
						<%-- 	<c:if test="${ pageInfo.list == null || fn:length(pageInfo.list) == 0  }">
							
							</c:if> --%>
							<c:choose>
								<c:when test="${ pageInfo.list == null || fn:length(pageInfo.list) == 0  }">
									<div>
										<span>暂无文章</span>
									</div>
								</c:when>
								<c:otherwise>
									<c:forEach items="${pageInfo.list}" var="item">
										<div class="articlelist_item">
										
											<div class="article_title">
												<h3>
													<a href="${baseUrl}/user/articleDetail.do?articleId=${item.articleid}">${item.title }</a>
												</h3>
											</div>
											<div class="article_content">
												${item.content }
											</div>
											<div class="articlemanage">
												<span class="link_postdate">2014-10-23 20:29</span>
										        <span class="link_view" title="阅读次数">
										        	<a href="/ma155211/article/details/40403001" title="阅读次数">阅读</a>
										        		(239)
										        </span>
										        <span class="link_comments" title="评论次数">
										        	<a href="/ma155211/article/details/40403001#comments" title="评论次数" onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_pinglun'])">评论</a>
										        	(0)
										        </span>
									            <span class="link_edit">
									            	<a href="http://write.blog.csdn.net/postedit/40403001" title="编辑">编辑</a>
									            </span>
									            <span class="link_delete">
									            	<a href="javascript:void(0);" onclick="javascript:deleteArticle(40403001);return false;" title="删除">删除</a>
									            </span>
											</div>
											<div class="clear" >
												
											</div>
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
						
						<div class="pagelist">
							<!--<span> 29条  共2页</span>
							<strong>1</strong> 
							<a href="/ma155211/article/list/2">2</a> 
							<a href="/ma155211/article/list/2">下一页</a> 
							<a href="/ma155211/article/list/2">尾页</a>-->
							
							
							<nav aria-label="Page navigation">
								
								<!--如何做到响应式布局？-->
								<!--<div class="pagetotal">
									<span id="" class="pagedata"> 
										当前2页，总228页，共1889条记录
									</span>
								</div>-->
								
								<ul class="pagination">
									<li>
										<a href="${baseUrl}/user/manageArticle.do?pageNum=1">首页</a>
									</li>
									<c:if test="${ pageInfo.hasPreviousPage }">
										<li>
											<a href="${baseUrl}/user/manageArticle.do?pageNum=${pageInfo.pageNum-1 }" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
											</a>
										</li>
									</c:if>
									
									<c:forEach items="${ pageInfo.navigatepageNums }" var="apageNum">
										<c:choose>
											<c:when test="${ apageNum == pageInfo.pageNum   }">
												<li class="active">
													<a href="${baseUrl}/user/manageArticle.do?pageNum=${apageNum}">${ apageNum }</a>
												</li>
											
											</c:when>
											<c:otherwise>
												<li>
													<a href="${baseUrl}/user/manageArticle.do?pageNum=${apageNum }">${ apageNum }</a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									
									<c:if test="${ pageInfo.hasNextPage }">
										<li>
											<a href="${baseUrl}/user/manageArticle.do?pageNum=${pageInfo.pageNum+1 }" aria-label="Next">
												<span aria-hidden="true">&raquo;</span>
											</a>
										</li>
									</c:if>
									<li>
										<a href="${baseUrl}/user/manageArticle.do?pageNum=${pageInfo.pages }">末页</a>
									</li>
								</ul>
							</nav>
						</div>
						
						
					</div>
				</div>
			</div>

		</div>

		<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>

		<!-- <footer class="container">
			<p>© Company 2017</p>
		</footer>

		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		plugins
		<script src="assets/plugins/icheck-1.x/icheck.js" type="text/javascript" charset="utf-8"></script>

		my
		<script src="assets/js/index.js" type="text/javascript" charset="utf-8"></script>
 -->
 		<script type="text/javascript">
 		
 			$(function(){
 				
 				//$('.container .navbar #myblog').attr("class","active");
 				
 			});
 		
 		
 		
 		</script>
 
 
 
	</body>

</html>