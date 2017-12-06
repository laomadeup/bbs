<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/jsp/common/domain.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/common/head.jsp"></jsp:include>

<!-- <!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！
		<title>博客内容</title>

		Bootstrap
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		plugins
		<link rel="stylesheet" type="text/css" href="assets/plugins/font-awesome-4.7.0/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css"/>
		<link rel="stylesheet" type="text/css" href="assets/plugins/icheck-1.x/skins/all.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/dx.css" />

		HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
		WARNING: Respond.js doesn't work if you view the page via file://
		[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]
	</head>

	<body>
		<nav class="navbar navbar-fixed-top navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			            <span class="sr-only">Toggle navigation</span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			        </button>
					<a class="navbar-brand" href="#">BLOG</a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">首页</a>
						</li>
						<li>
							<a href="bloglist.html">帖子</a>
						</li>
						<li>
							<a href="#contact">联系我们</a>
						</li>
					</ul>
				</div>
				/.nav-collapse
			</div>
			/.container
		</nav> -->
		<div class="container">
			<div class="contentbox">
				<ol class="breadcrumb">
					<li>
						<!-- 暂时没有首页 -->
						<a href="index.html">首页</a>
					</li>
					<li>
						<a href="${baseUrl}/user/blogList.do?pageNum=${pageNum}">论坛列表</a>
					</li>
					<li class="active">${ article.title }</li>
				</ol>
				<div class="row">
					<div class="col-md-1">
					
					</div>
				
					<div class="col-md-10">
						<!-- <img src="assets/img/135419.jpg"/>
						“小雪雪满天，来年必丰年。”今日起，气温逐渐下降，但大地尚未过于寒冷，中国部分地区开始降雪，但雪量不大，故称小雪。气候清寒，暖阳在背，寒意渐浓，情渐深，海量煤球正敲门。你所在的城市降温了吗？

						活动时间：
						2017年11月22日——11月23日
						
						参与方式：
						回复本帖评论，分享你所在城市的温度，以及寒意渐浓情渐深的温暖故事，即参与成功。
						
						活动奖励：
						凡参与本次活动即可获得100煤球奖励。 -->
						
						${ article.content }
						
						
					</div>
					<div class="col-md-1">
					
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
	</body>

</html>