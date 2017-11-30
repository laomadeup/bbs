package cn.laoma.service;

import cn.laoma.domain.User;
/**
 * @author laoma
 * @version 1.0
 * */
public interface IUserService {
	
	
	/**
	 * 根據用戶id获取用户信息
	 * */
	public User getUserById(Integer id);
	
	/**
	 * 插入用户
	 * */
	public Integer save(User uservo);
	
	
	
	/**
	 * 根据手机号码获取用户信息
	 * @param mobile
	 * @return
	 */
	public User getByMobile(String mobile);
	
	
	/**
	 * 登录(密码为明文密码,只有状态为开通的职员才能登录)
	 * @param mobile		职员id
	 * @param password		明文密码
	 * @param loginIp		登录ip
	 * @return
	 */
	public User login(String mobile, String password);
	
	
	/**
	 * 冻结
	 * @param id	用户id
	 * @return
	 */
	public Boolean frozenStatus(Integer id);
	
	/**
	 * 开通正常
	 * @param id	用户id
	 * @return
	 */
	public Boolean openStatus(Integer id); 
	
	/**
	 * 根据参数条件获取记录总数
	 * @param queryParam
	 * @return
	 */
	public Integer getCount();
	
	
}
