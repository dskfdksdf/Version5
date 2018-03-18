package com.usc.user.mapper;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.usc.user.bean.UserBean;


@MapperScan
public interface UserMapper {
	
	UserBean queryUserInfo(Map<String, Object> conditions);
	Integer insertUserInfo(Map<String, Object> conditions);

	List<UserBean> queryallUserInfo();
	
	UserBean validateUser(UserBean user); 
	UserBean validateUserapp(UserBean user);
	Integer insert(String monitor);
	
	Integer insertUser(UserBean user);
	
	Integer checkUser(UserBean user);
	List<UserBean>  queryUser();
}
