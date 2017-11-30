<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/jsp/common/domain.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/common/head.jsp"></jsp:include>
<!-- ﻿<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！
		<title>博客列表</title>

		Bootstrap
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		plugins
		<link rel="stylesheet" type="text/css" href="assets/plugins/font-awesome-4.7.0/css/font-awesome.css" />
		字体样式
		<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css"/>
		checkbox插件
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
						<li>
							<a href="index.html">首页</a>
						</li>
						<li class="active">
							<a href="#about">内容</a>
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
			<div class="boxlist">

				<div class="row pic">
					<!--<div class="col-md-1"></div>-->
					<div class="col-md-4 ">
						<a href="">
							<img src="assets/img/111814.jpg" />
						</a>

					</div>
					<div class="col-md-8 title">
						<!--<div class="word">-->
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
						<!--</div>-->
					</div>
				</div>

				<div class="row pic">
					<!--<div class="col-md-1"></div>-->
					<div class="col-md-4 ">
						<a href="">
							<img src="assets/img/135419.jpg" />
						</a>

					</div>
					<div class="col-md-8 title">
						<!--<div class="word">-->
						<p>
							标题
						</p>

						<a href="" title="这又是个标题">这又是个标题</a>
						<div class="spfont alte">
							<a class="alink" target="_blank" href="https://bbs.meizu.cn/thread-6761220-1-1.html">阅读全文</a>
						</div>
						<div class="content">
							“小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？ “小雪雪满天，来年必丰年。”你在的城市下雪了吗？
						</div>
						<!--</div>-->
					</div>

				</div>

				<nav aria-label="Page navigation">
					<ul class="pagination">
						<li>
							<a href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<li>
							<a href="#">1</a>
						</li>
						<li>
							<a href="#">2</a>
						</li>
						<li>
							<a href="#">3</a>
						</li>
						<li>
							<a href="#">4</a>
						</li>
						<li>
							<a href="#">5</a>
						</li>
						<li>
							<a href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>

			</div>
		</div>
		<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>

	</body>

</html>