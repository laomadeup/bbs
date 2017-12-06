<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/jsp/common/domain.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/common/head.jsp"></jsp:include>

		<div class="container">
			<div class="boxlist">

				<!-- <div class="row pic">
					<div class="col-md-1"></div>
					<div class="col-md-4 ">
						<a href="">
							<img src="assets/img/111814.jpg" />
						</a>

					</div>
					<div class="col-md-8 title">
						<div class="word">
						<p>
							标题
						</p>

						<a href="" title="这又是个标题">这又是个标题</a>
						<div class="spfont alte">
							<a class="alink" target="_blank" href="blogcontent.html">阅读全文</a>
						</div>
						<div class="content">
							“小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？
						</div>
						</div>
					</div>
				</div> -->
				
				<c:forEach items="${pageInfo.list }" var="item">
					<div class="row pic">
						<!--<div class="col-md-1"></div>-->
						<div class="col-md-4 ">
							<a href="">
								<img src="${baseResPath }/img/135419.jpg" />
							</a>
						</div>
						<div class="col-md-8 title">
							<!--<div class="word">-->
							<p>
								文章类型
							</p>
	
							<a class="smalltitle" href="${baseUrl}/user/blogContent.do?articleId=${item.articleid}&pageNum=${pageInfo.pageNum}" title="${item.title }" style="font-size: 16px;line-height: 30px;font-weight: 700;display: block;">
								${item.title }
							</a>
							<div class="spfont alte">
								<!-- target="_blank" -->
								<a class="alink"  href="${baseUrl}/user/blogContent.do?articleId=${item.articleid}&pageNum=${pageInfo.pageNum}">阅读全文</a>
							</div>
							<div class="content">
								${item.content }
							</div>
							<!--</div>-->
						</div>
	
					</div>
				
				</c:forEach>
				
				
				<div class="row ">
					<div class="col-md-6 pagenum" >
						当前${pageInfo.pageNum }页，总${pageInfo.pages }页，共${pageInfo.total }条记录
					</div>
					<div class="col-md-6 ">
						<nav aria-label="Page navigation">
							<ul class="pagination">
								<li>
									<a href="${baseUrl}/user/blogList.do?pageNum=1">首页</a>
								</li>
								<c:if test="${pageInfo.hasPreviousPage }">
									<li>
										<a href="${baseUrl}/user/blogList.do?pageNum=${pageInfo.pageNum-1 }" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
										</a>
									</li>
								</c:if>
								<c:forEach items="${pageInfo.navigatepageNums }" var="apageNum">
									<c:if test="${ apageNum == pageInfo.pageNum }">
										<li class="active">
											<a href="${baseUrl}/user/blogList.do?pageNum=${apageNum}">${apageNum }</a>
										</li>
									</c:if>
									<c:if test="${apageNum != pageInfo.pageNum }">
										<li>
											<a href="${baseUrl}/user/blogList.do?pageNum=${apageNum}">${apageNum }</a>
										</li>
									</c:if>
								</c:forEach>
								<c:if test="${pageInfo.hasNextPage }">
									<li>
										<a href="${baseUrl}/user/blogList.do?pageNum=${pageInfo.pageNum+1 }" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
										</a>
									</li>
								</c:if>
								<li>
									<a href="${baseUrl}/user/blogList.do?pageNum=${pageInfo.pages }">末页</a>
								</li>
							</ul>
						</nav>
					</div>
				
				</div>

			</div>
		</div>
		<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
		
		<script type="text/javascript">
			$(function(){
				$('.container #navbar #blog').attr("class","active");
			});
		
		
		
		
		

		</script>
		

	</body>

</html>