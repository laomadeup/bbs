<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/jsp/common/domain.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/common/head.jsp"></jsp:include>

		<div class="container">
			<div class="box">
				<div class="row">
					<!--<div class="col-md-1"></div>-->
					<div class="col-md-12">

						<div class="row loginregister">
							<!--划条横线-->
							<div></div>
							<div class="col-md-1"></div>
							<div class="col-md-5 ibox register">
								<h1>新会员注册</h1>
								<div class="login_msg" id="login_errMsg" style="display: none;">
						      		<font color="red"></font>
						    	</div>
								<form>
									<div class="form-group">
										<input type="mobile" name="mobile" class="form-control in" id="exampleInputEmail1" placeholder="手机号码" >
									</div>
									<div class="form-group">
										<input type="password" name="password" class="form-control in" id="exampleInputPassword1" placeholder="密码" >
									</div>
									<div class="form-group code">
										<input type="text" name="code" value="${code}" class="form-control verificationcode in" placeholder="验证码">
										<%-- <img src="${baseResPath }/img/ValidateCode.gif" width="100px" height="50" /> --%>
										<img id="register_validateCodeId" src="${baseUrl}/user/getVerificationCode.do" width="100px" height="50" />
										<a title="点击更换" href="javascript:void(0)" id="changeVerificationCode">刷新</a>
									</div>
									<div class="form-group checkbox">
										性别：
										<label>
				      						<input type="radio" name="sex" value="1" checked> 男
				      						<i class="fa fa-mars-stroke" aria-hidden="true"></i>
			   							</label>
										<label>
				      						<input type="radio" name="sex" value="0"> 女
				      						<i class="fa fa-venus" aria-hidden="true"></i>
			   							</label>
									</div>

									<div class=" form-group agreement">
										<input type="checkbox" name="protocol" checked> 已同意《Mtime当讯网服务条款》
									</div>
									<div class="login_msg" id="login_errMsg" style="display: none;">
							      		<font color="red"></font>
							    	</div>
									<div class="form-group ibutton">
										<button type="button" id="register_ok"  class="btn btn-primary  btn-lg btn-block">注册</button>
									</div>
								</form>

							</div>

							<div class="col-md-5 ibox login">
								<h1>会员登录</h1>
								<form>
									<div class="form-group">
										<input type="mobile" name="mobile" class="form-control in" id="exampleInputEmail1" placeholder="手机号码" >
									</div>
									<div class="form-group">
										<input type="password" name="password" class="form-control in" id="exampleInputPassword1" placeholder="密码" >
									</div>

									<div class="form-group checkbox">
										<input type="checkbox"> 记住我
									</div>
									<div class="form-group ibutton">
										<button type="button" id="login_ok"  class="btn btn-primary  btn-lg btn-block">登录</button>
									</div>
								</form>

							</div> 
							<div class="col-md-1"></div>

						</div>
					</div>
					<!--<div class="col-md-1"></div>-->
				</div>

			</div>
		</div>
		<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
		<script type="text/javascript">
		        //依赖于jQuery的代码
					     
		    	function loginErrorMsg(msg){
					$('div#login_errMsg > font').html(msg);
					$('#login_errMsg').show();
				}
		        
		        
			      $(function () { 
			    	  

				        function login_reloadImage(){
				        	$('#register_validateCodeId').attr('src','${baseUrl}/user/getVerificationCode.do?id='+Math.random());
				        }
			    	  
			    	 $('#changeVerificationCode').click(function(){
			    		 login_reloadImage();
			    	 });
			    	
			    	/* 注册部分 */
			        $('.register form').bootstrapValidator({
			            message: 'This value is not valid',
			            feedbackIcons: {
			                valid: 'glyphicon glyphicon-ok',
			                invalid: 'glyphicon glyphicon-remove',
			                validating: 'glyphicon glyphicon-refresh'
			            },
			            fields: {
			            	mobile: {
			                    message: '手机号码验证失败',
			                    validators: {
			                        notEmpty: {
			                            message: '手机号码不能为空'
			                        },
			                        stringLength: {
			                            min: 11,
			                            max: 11,
			                            message: '手机号码长度必须在11位'
			                        },
			                    }
			                },
			                password: {
			                    validators: {
			                        notEmpty: {
			                            message: '密码不能为空'
			                        },
			                        stringLength: {
			                            min: 6,
			                            max: 18,
			                            message: '密码长度必须在6到18位之间'
			                        },
			                        regexp: {
			                            regexp: /^[a-zA-Z0-9_]+$/,
			                            message: '密码只能包含大写、小写、数字和下划线'
			                        }
			                    }
			                },
			                code:{
			                	validators: {
			                		 notEmpty:{
			                			 message:'验证码不能为空，分大小写'
			                		 },
			                		 regexp:{
			                			 regexp: /^[a-zA-Z0-9]+$/,
				                         message: '密码只能包含大写、小写和数字' 
			                		 }
			                	 }
			                }/* ,
			                sex:{
			                	 validators: {
			                		 notEmpty:{
			                			 message:'必须选择一个'
			                		 }
			                	 }
			                },
			                protocol:{
			                	validators: {
			                		 notEmpty:{
			                			 message:'必须同意'
			                		 }
			                	 }
			                } */
			            },
			            submitHandler: function (validator, form, submitButton) {
			                alert("submit");
			            }
			            
			            
			        });
			        /* 登陆部分 */
			        $('.login form').bootstrapValidator({
			            message: 'This value is not valid',
			            feedbackIcons: {
			                valid: 'glyphicon glyphicon-ok',
			                invalid: 'glyphicon glyphicon-remove',
			                validating: 'glyphicon glyphicon-refresh'
			            },
			            fields: {
			            	mobile: {
			                    message: '手机号码验证失败',
			                    validators: {
			                        notEmpty: {
			                            message: '手机号码不能为空'
			                        },
			                        stringLength: {
			                            min: 11,
			                            max: 11,
			                            message: '手机号码长度必须在11位'
			                        },
			                    }
			                },
			                password: {
			                    validators: {
			                        notEmpty: {
			                            message: '密码不能为空'
			                        },
			                        stringLength: {
			                            min: 6,
			                            max: 18,
			                            message: '密码长度必须在6到18位之间'
			                        },
			                        regexp: {
			                            regexp: /^[a-zA-Z0-9_]+$/,
			                            message: '密码只能包含大写、小写、数字和下划线'
			                        }
			                    }
			                },
			                code:{
			                	validators: {
			                		 notEmpty:{
			                			 message:'验证码不能为空，区分大小写'
			                		 },
			                		 regexp:{
			                			 regexp: /^[a-zA-Z0-9]+$/,
				                         message: '密码只能包含大写、小写和数字' 
			                		 }
			                	 }
			                }
			            }
			        });
			        
			        /* 验证验证码 */
			        function checkImgCode(){
			        	
			        	var code = $("input[name='code']").val();
			    		var isEqual = false;
			    		$.ajax({
			    			url:'${baseUrl}/user/checkValidateCodeAjax.do',
			    			type:'get',
			    			async:false,
			    			data:{code:code,id:Math.random()},
			    			dataType:'json',
			    			success:function(response){
			    				if(response.isEqual){
			    					isEqual = true;
			    				}else{
			    					isEqual = false;
			    					//login_reloadImage();
			    					//重新申请验证码？
			    					//$('#register_validateCodeId').attr('src','${baseUrl}/user/getVerificationCode?id='+Math.random());
			    				}
			    			},
			    			error:function(response){
			    				alert("校验验证码服务繁忙！");
			    				return false;
			    			}
			    		});
			    		return isEqual;
			        }
			        
			        $("#register_ok").click(function(){
			    		onRegister();
			    	});
			        
			        function onRegister(){
			        	var mobile = $('.register form').find("input[name='mobile']").val();
			        	var password = $('.register form').find("input[name='password']").val();
			        	var code = $('.register form').find("input[name='code']").val();
			        	var sex = $(':radio[name="sex"]:checked').val();
			        	
			        	if(code == null || code == ''){
			        		alert("验证码为空");
			        		return false;
			        	}
			        	
			        	if(typeof(sex) =="undefined"){
			        		alert("必须选择性别!");
			        		return false;
			        	}
			        	
			        	if(!$("input[name='protocol']").is(':checked')) {
			        		alert("必须同意协议");
			        		return false;
			        	}
			        	
			        	var issubmit = true;
			    		var i_index  = 0;
			    		$('.register form').find('.in').each(function(i){
			    			if ($.trim($(this).val()).length == 0) {
			    				issubmit = false;
			    				if (i_index == 0)
			    					i_index  = i;
			    			}
			    		});
			    		if (!issubmit) {
			    			$(this).find('.in').eq(i_index).focus();
			    			return false;
			    		}
			    		
			    		if(!checkImgCode()){
			    			alert('验证码错误!');
			    			return false;
			    		}
			    		$("#register_ok").attr("disabled", true).val('注册中..');
			        	console.log("sex:"+sex);
			        	console.log("mobile:"+mobile);
			        	$.ajax({
			    			url:'${baseUrl}/user/registerAjax.do?randomId='+Math.random(),
			    			type:'get',
			    			data:{mobile:mobile, password:password,sex:sex},
			    			dataType:'json',
			    			async:false,
			    			success:function(response){
			    				if(response.isFail){
			    					loginErrorMsg(response.msg);
			    					$("#register_ok").attr("disabled", false).val('注册');
			    					//重新加载验证码
			    					login_reloadImage();
			    					return false;
			    				}else{
			    					window.location = '${baseUrl}/user/blogList.do';
			    				}
			    			},
			    			error:function(response){
			    				alert("服务器繁忙！");
			    				$("#register_ok").attr("disabled", false).val('登录');
			    				return false;
			    			}
			    		});
			            return false;
			        	
			       }
			        
			        $("#login_ok").click(function(){
			    		onLogin();
			    	});
			        
			        function onLogin(){
			        	var mobile = $('.register form').find("input[name='mobile']").val();
			        	var password = $('.register form').find("input[name='password']").val();
			        	/* var code = $('.register form').find("input[name='code']").val();
			        	var sex = $(':radio[name="sex"]:checked').val();
			        	
			        	if(code == null || code == ''){
			        		alert("验证码为空");
			        		return false;
			        	}
			        	
			        	if(typeof(sex) =="undefined"){
			        		alert("必须选择性别!");
			        		return false;
			        	}
			        	
			        	if(!$("input[name='protocol']").is(':checked')) {
			        		alert("必须同意协议");
			        		return false;
			        	}
			        	 */
			        	var issubmit = true;
			    		var i_index  = 0;
			    		$('.login form').find('.in').each(function(i){
			    			if ($.trim($(this).val()).length == 0) {
			    				issubmit = false;
			    				if (i_index == 0)
			    					i_index  = i;
			    			}
			    		});
			    		if (!issubmit) {
			    			$(this).find('.in').eq(i_index).focus();
			    			return false;
			    		}
			    		
			    		if(!checkImgCode()){
			    			alert('验证码错误!');
			    			return false;
			    		}
			    		$("#login_ok").attr("disabled", true).val('登录中..');
			        	console.log("mobile:"+mobile);
			        	$.ajax({
			    			url:'${baseUrl}/user/loginAjax.do?randomId='+Math.random(),
			    			type:'get',
			    			data:{mobile:mobile, password:password},
			    			dataType:'json',
			    			async:false,
			    			success:function(response){
			    				if(response.isFail){
			    					loginErrorMsg(response.msg);
			    					$("#login_ok").attr("disabled", false).val('登录');
			    					//重新加载验证码
			    					login_reloadImage();
			    					return false;
			    				}else{
			    					window.location = '${baseUrl}/user/blogList.do';
			    				}
			    			},
			    			error:function(response){
			    				alert("服务器繁忙！");
			    				$("#login_ok").attr("disabled", false).val('登陆');
			    				return false;
			    			}
			    		});
			            return false;
			        	
			       }
			        
			     }); 
    
    
    </script>
	</body>

</html>