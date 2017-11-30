package cn.laoma.dao;

import cn.laoma.domain.User;
import cn.laoma.domain.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IUserDao {
    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);
    
    public User getUserById(Integer id);
    
    public User getUserByEmail(String email);
    
    public User getUserByMobile(String mobile);
    
    public User getUserByMobileAndPassword(@Param("mobile")String mobile,@Param("password")String password);
    

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);
}