package com.jiyun.dao;


import com.jiyun.entity.Interview;
import com.jiyun.entity.UserEntity;

public interface InterviewDao {

	//登陆查询
	public UserEntity selectForLogin(UserEntity user)throws Exception;

	public void saveInterview(Interview interview)throws Exception;
	
	
}
