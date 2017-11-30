package cn.laoma.controller.global;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;



/**
 * 登录拦截器
 * 拦截没有登录的请求
 * 
 * */
public class Interceptor implements HandlerInterceptor{

	
	/** 
     * Handler执行完成之后调用这个方法 
     */ 
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exc)
			throws Exception {
		System.out.println("before-----------------");
	}

	/** 
     * Handler执行之后，ModelAndView返回之前调用这个方法 
     */  
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView modelAndView) throws Exception {
		System.out.println("after ---------------------");
	}

	/** 
     * Handler执行之前调用这个方法 
     */ 
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) throws Exception {
		 //获取请求的URL  
        String url = request.getRequestURI(); 
        System.out.println("url:"+url);
        //URL:login.jsp是公开的;这个demo是除了login.jsp是可以公开访问的，其它的URL都进行拦截控制  
        if(url.indexOf("login.do")>=0 || url.indexOf("getVerificationCode.do")>=0 
        		|| url.indexOf("checkValidateCodeAjax.do")>=0 
        		|| url.indexOf("loginAjax.do") >=0|| url.indexOf("registerAjax.do")>=0){  
        	return true;  
        }
        //获取Session  
        HttpSession session = request.getSession();  
       // String username = (String)session.getAttribute("username"); 
        Integer loginUserid = (Integer) session.getAttribute("loginUserid"); 
          
        if(loginUserid == null){
        	//不符合条件的，跳转到登录界面  
        	request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response); 
        	return false;
        }
       
		return true;
		
	}

}
