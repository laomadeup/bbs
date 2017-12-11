<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/jsp/common/domain.jsp"></jsp:include>
<%-- <jsp:include page="/WEB-INF/jsp/common/head.jsp"></jsp:include> --%>
 <!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>添加博客文章</title>

		<!-- Bootstrap -->
		<link href="${baseResPath }/css/bootstrap.min.css" rel="stylesheet">
		<!-- plugins -->
		<link rel="stylesheet" type="text/css" href="${baseResPath }/component/font-awesome-4.7.0/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="${baseResPath }/component/icheck-1.x/skins/all.css" />
		<link rel="stylesheet" type="text/css" href="${baseResPath }/component/font-awesome-3.0.2/font-awesome.css" />
		<!-- 富文本与bootstrap有冲突 -->
		<link rel="stylesheet" type="text/css" href="${baseResPath }/css/bootstrap-combined.no-icons.min.css" />
		<link rel="stylesheet" type="text/css" href="${baseResPath }/css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" type="text/css" href="${baseResPath }/css/blogedit.css" />
		<link rel="stylesheet" type="text/css" href="${baseResPath }/component/bootstrap-wysiwyg-master/external/google-code-prettify/prettify.css" />

		<link rel="stylesheet" type="text/css" href="${baseResPath }/css/dx.css" />

		<!-- [if lt IE 9]> -->
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/responvoiceBtnd.min.js"></script>
    <!-- [endif] -->
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
						<li id="index">
							<a href="#">首页</a>
						</li>
						<li id="blog">
							<a href="${baseUrl }/user/blogList.do?pageNum=1">文章</a>
						</li>
						<!-- <li id="contact">
							<a href="#contact">联系我们</a>
						</li> -->
					</ul>
					
					<c:if test="${ not empty sessionScope.loginUserid }">
						 <ul class="nav navbar-nav navbar-right">
						 	<li class="loginimg">
						 		<div class="userimg">
						 			<img src="${baseResPath }/img/head.gif" alt="忧郁的李小晨" width="44" height="44">	
						 		</div>
						 	</li>
					        <li class="dropdown">
					          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">浮生若尘 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li id="myblog"><a href="${baseUrl}/user/manageArticle.do?pageNum=1">我的博客</a></li>
					            <li><a href="${baseUrl}/user/loginOut.do">退出</a></li>
					          <!--  <li role="separator" class="divider"></li>
					            <li><a href="#">Separated link</a></li>-->
					          </ul>
					        </li>
					      </ul>
					</c:if>
					
					
				</div>
				<!-- /.nav-collapse -->
			</div>
			<!-- /.container -->
		</nav>
		
		
		<div class="container articleedit">
			<div class="articlebox-edit">
				<form>
				<div class="hero-unit">
					
					<div class="user_info">
						
						<div class="user_img">
							<a href="javascript:void(0)">
								<img src="${baseResPath }/img/head.gif"/>
							</a>
						</div>
						<div class="user_name">
							<span >
								浮生若尘ma
							</span>
						</div>
						<div class="user_blog">
							<a href="">
								<span >
									我的空间
								</span>
							</a>
						</div>
					</div>
					<hr/>
					<div class="row">
					  <div class="col-md-8">
					    <div class="input-group">
					      <span class="input-group-btn">
					        <button class="btn btn-default" type="button">标题</button>
					      </span>
					      <input type="text" name="title" class="form-control article_title" placeholder="文章标题">
					    </div>
					  </div>
					</div>
					
					<!--上传文件的提示使用？-->
					<div id="alerts"></div>
					<div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
							<ul class="dropdown-menu">
							</ul>
						</div>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size">
								<i class="icon-text-height"></i>&nbsp;
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a data-edit="fontSize 5">
										<font size="5">大</font>
									</a>
								</li>
								<li>
									<a data-edit="fontSize 3">
										<font size="3">正常</font>
									</a>
								</li>
								<li>
									<a data-edit="fontSize 1">
										<font size="1">小</font>
									</a>
								</li>
							</ul>
						</div>
						<div class="btn-group">
							<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
							<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
							<a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
							<a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
						</div>
						<div class="btn-group">
							<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
							<a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
							<a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
							<a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
						</div>
						<div class="btn-group">
							<a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
							<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
							<a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
							<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
						</div>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="icon-link"></i></a>
							<div class="dropdown-menu input-append">
								<input class="span2" placeholder="URL" type="text" data-edit="createLink" />
								<button class="btn" type="button">Add</button>
							</div>
							<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="icon-cut"></i></a>

						</div>

						<div class="btn-group">
							<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="icon-picture"></i></a>
							<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
						</div>
						<div class="btn-group">
							<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
							<a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
						</div>
						<input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
					</div>

					<div id="editor">
						编辑&hellip;
					</div>
				</div>
				
				<div class="article_submit">
					<button type="button" id="publishArticle" class="btn btn-info">发表文章</button>
					<button type="button" id="saveArticle" class="btn btn-info">立即保存</button>
				</div>
			</form>
			</div>
		</div>
		<%-- <jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include> --%>
		 <footer class="container">
			<p>© Company 2017</p>
		</footer>

		<script src="${baseResPath }/js/jquery.min.js"></script>
		<script src="${baseResPath }/js/bootstrap.min.js"></script>
		<!-- plugins -->
		<script src="${baseResPath }/component/icheck-1.x/icheck.js" type="text/javascript" charset="utf-8"></script>
		<!-- 富文本 -->

		<script src="${baseResPath }/component/bootstrap-wysiwyg-master/external/jquery.hotkeys.js" type="text/javascript" charset="utf-8"></script>
		<script src="${baseResPath }/component/bootstrap-wysiwyg-master/bootstrap-wysiwyg.js" type="text/javascript" charset="utf-8"></script>
		<script src="${baseResPath }/component/bootstrap-wysiwyg-master/external/google-code-prettify/prettify.js" type="text/javascript" charset="utf-8"></script>
		<!-- my -->
		<script src="${baseResPath }/js/index.js" type="text/javascript" charset="utf-8"></script>

	</body> 
	<script type="text/javascript">
		$(function() {
			function initToolbarBootstrapBindings() {
				var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
						'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
						'Times New Roman', 'Verdana'
					],
					fontTarget = $('[title=Font]').siblings('.dropdown-menu');
					$.each(fonts, function(idx, fontName) {
					fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + 
					fontName + '</a></li>'));
				});
				$('a[title]').tooltip({
					container: 'body'
				});
				$('.dropdown-menu input').click(function() {
						return false;
					})
					.change(function() {
						$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
					})
					.keydown('esc', function() {
						this.value = '';
						$(this).change();
					});

				$('[data-role=magic-overlay]').each(function() {
					var overlay = $(this),
					target = $(overlay.data('target'));
					overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
				});
				if("onwebkitspeechchange" in document.createElement("input")) {
					var editorOffset = $('#editor').offset();
					$('#voiceBtn').css('position', 'absolute').offset({
						top: editorOffset.top,
						left: editorOffset.left + $('#editor').innerWidth() - 35
					});
				} else {
					$('#voiceBtn').hide();
				}
			};

			function showErrorAlert(reason, detail) {
				var msg = '';
				if(reason === 'unsupported-file-type') {
					msg = "Unsupported format " + detail;
				} else {
					console.log("error uploading file", reason, detail);
				}
				$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
					'<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
			};
			initToolbarBootstrapBindings();
			$('#editor').wysiwyg({
				fileUploadError: showErrorAlert
			});
			window.prettyPrint && prettyPrint();
			
			
			
			$('.articleedit #publishArticle').click(function(){
				
				var title = $('.articleedit').find("input[name='title']").val();
				var article_info = $('#editor').html();
				
				if(title == null || title == ''){
					
					alert("标题不能为空!");
					return false;
				}

				if(article_info == null || article_info == ''){
					
					alert("内容不能为空!");
					return false;
				}
				
				
				$.ajax({
	    			url:'${baseUrl}/user/addArticleAjax.do',
	    			type:'post',
	    			async:false,
	    			data:{title:title,articlecontent:article_info},
	    			dataType:'json',
	    			success:function(response){
	    				if(response.success){
	    					//isEqual = true;
	    					//跳转到用户文章列表
	    					window.location = '${baseUrl}/user/manageArticle.do?pageNum=1';
	    				}else{
	    					
	    					//isEqual = false;
	    					//弹出错误提示框？
	    					
	    					
	    				}
	    			},
	    			error:function(response){
	    				alert("网络繁忙！");
	    				return false;
	    			}
	    		});
				
			});
			
			
			$('.articleedit #saveArticle').click(function(){
				
				var title = $('.articleedit').find("input[name='title']").val();
				var article_info = $('#editor').html();
				
				if(title == null || title == ''){
					
					alert("标题不能为空!");
					return false;
				}

				if(article_info == null || article_info == ''){
					
					alert("内容不能为空!");
					return false;
				}
				
				
				$.ajax({
	    			url:'${baseUrl}/user/addArticleAjax.do',
	    			type:'post',
	    			async:false,
	    			data:{title:title,articlecontent:article_info},
	    			dataType:'json',
	    			success:function(response){
	    				if(response.success){
	    					//isEqual = true;
	    					//跳转到编辑页面
	    					// window.location.reload();
	    					window.location = '${baseUrl}/user/articleEdit.do?pageNum=1';
	    				}else{
	    					
	    					//isEqual = false;
	    					//弹出错误提示框？
	    					
	    					
	    				}
	    			},
	    			error:function(response){
	    				alert("网络繁忙！");
	    				return false;
	    			}
	    		});
				
			});
			
			
			
			
			
			
			
			
			
			
			
			
			
		});
	</script>

</html>