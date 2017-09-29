package cn.laoma.serviceimpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.laoma.dao.IUserDao;
import cn.laoma.domain.User;
import cn.laoma.service.IUserService;

@Service("userServiceImpl")
public class UserServiceImpl implements IUserService{

	@Resource
	private IUserDao userDao;

	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPrimaryKey(id);
	}
	
	
	
}
