package cn.laoma.test;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;

import cn.laoma.dao.IUserDao;
import cn.laoma.domain.User;
import cn.laoma.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestMybaits {

	private static Logger logger = Logger.getLogger(TestMybaits.class);
	@Resource
	private IUserService userServiceImpl = null;
	
	@Resource
	private IUserDao userDao;
	
	@Test
	public void test() {
		
		User u = new User();
		//u.setId(1);
		u.setUserName("张三");
		u.setAge(20);
		u.setPassword("123456");
		
		userDao.insert(u);
		
		
		/*User user = userServiceImpl.getUserById(1);
		logger.info(JSON.toJSONString(user));  
		System.out.println(user.getUserName());*/
	}
	
	
}
