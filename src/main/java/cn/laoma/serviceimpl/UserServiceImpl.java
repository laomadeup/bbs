package cn.laoma.serviceimpl;

import java.lang.reflect.InvocationTargetException;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import cn.laoma.dao.IUserDao;
import cn.laoma.domain.User;
import cn.laoma.service.IUserService;
import cn.laoma.utils.MD5;

@Service("userServiceImpl")
public class UserServiceImpl implements IUserService{

	@Resource
	private IUserDao userDao;

	@Override
	public User getUserById(Integer id) {
		
		if(id == null)
			return null;
		User vo = this.userDao.getUserById(id);
		if(vo == null)
			return null;
		return vo;
	}

	@Override
	public Integer save(User uservo) {
		if(uservo == null){
			System.out.println("saveUser:参数为空");
			throw new RuntimeException("参数为空");
		}
		if(StringUtils.isEmpty(uservo.getMobile())){
			System.out.println("saveUser:手机为空");
			throw new RuntimeException("手机为空");
		}
		//手机号码与邮箱是否被使用了,注册时没有填写邮箱？
		if(this.userDao.getUserByMobile(uservo.getMobile()) != null){
			System.out.println("saveUser:手机已注册");
			throw new RuntimeException("手机已注册");
		}
		
		/*if(StringUtils.isEmpty(uservo.getUserName())){
			System.out.println("saveUser:用户名为空");
			throw new RuntimeException("用户名为空");
		}*/
		if(StringUtils.isEmpty(uservo.getPassword())){
			System.out.println("saveUser:密码为空");
			throw new RuntimeException("密码为空");
		}
		
		User model = new User();
		
		try {
			BeanUtils.copyProperties(model, uservo);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
			throw new RuntimeException("注册失败");
		}
		//model.setAge(uservo.getAge());
		model.setEmail(uservo.getEmail());
		model.setMobile(uservo.getMobile());
		model.setPassword(MD5.getMD5(uservo.getPassword()));
		model.setCreateTimestamp(new Date().getTime());
		//设置默认性别为男
		if( uservo.getSex() == null){
			model.setSex(Short.valueOf("1"));
		}else{
			model.setSex(Short.valueOf(uservo.getSex()));
		}
		model.setStatus(Short.valueOf("1"));
		Long id = Long.valueOf(this.userDao.insert(model));
		
		Integer userId = model.getId();
		
		return userId;
	}

	
	
	/**
	 * 根据手机号码获取用户
	 * */
	@Override
	public User getByMobile(String mobile) {
		
		if(StringUtils.isEmpty(mobile)){
			System.out.println("手机号码为空!");
			return null;
		}
		
		User user = this.userDao.getUserByMobile(mobile);
		
		if(user == null){
			System.out.println("该手机还没有注册，可以注册");
			return null;
		}
		
		User model = new User();
		try {
			BeanUtils.copyProperties(model, user);
			
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
			throw new RuntimeException("手机获取用户失败，请联系管理员!");
		}
		return model;
	}

	@Override
	public Integer getCount() {
		return null;
	}

	@Override
	public User login(String mobile, String password) {
		
		
		if(StringUtils.isEmpty(mobile) || StringUtils.isEmpty(password))
			return null;
		
		User po = this.userDao.getUserByMobileAndPassword(mobile,MD5.getMD5(password));
		if(po == null){
			System.out.println("没有这个用户,请注册!");
			return null;
		}
		if(!po.getStatus().equals(Short.valueOf("1"))){
			this.frozenStatus(po.getId());
			return null;
		}
		User model = new User();
		try {
			BeanUtils.copyProperties(model, po);
			
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
			throw new RuntimeException("登录用户失败，请联系管理员!");
		}
		return model;
		
	}

	@Override
	public Boolean frozenStatus(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean openStatus(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
