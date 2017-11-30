<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/jsp/common/domain.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>登录</title>
		
		<!-- Bootstrap -->
		<link href="${baseResPath }/css/bootstrap.min.css" rel="stylesheet">
		<link href="${baseResPath }/css/bootstrap.css" rel="stylesheet">
		<!--component-->
		<!--<link rel="stylesheet" type="text/css" href="${baseResPath }/component/font-awesome-4.7.0/css/font-awesome.css" />-->
		
		
		<link rel="stylesheet" type="text/css" href="${baseResPath }/css/font-awesome.css"/>
		
		<link rel="stylesheet" type="text/css" href="${baseResPath }/component/icheck-1.x/skins/all.css" />
		<link rel="stylesheet" type="text/css" href="${baseResPath }/css/dx.css" />
		
    	<link href="${baseResPath }/css/bootstrapValidator.min.css" rel="stylesheet" />
		
		<link href="${baseResPath }/css/bootstrapValidator.css" rel="stylesheet"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
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
					<!--<a class="navbar-brand" href="#">BLOG</a>-->
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
				<!-- /.nav-collapse -->
			</div>
			<!-- /.container -->
		</nav>