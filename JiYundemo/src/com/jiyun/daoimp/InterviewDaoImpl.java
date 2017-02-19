package com.jiyun.daoimp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.jiyun.dao.InterviewDao;
import com.jiyun.dbconnection.DbConnectionUtil;
import com.jiyun.entity.Interview;
import com.jiyun.entity.UserEntity;
import com.jiyun.entity.User_Role;

public class InterviewDaoImpl implements InterviewDao {

	private Connection conn;
	private ResultSet res;
	private PreparedStatement pst;
	private DbConnectionUtil db=new DbConnectionUtil();
	
	@Override
	public UserEntity selectForLogin(UserEntity user) throws Exception {

		String sql="select user_id,user_name,role_name FROM user,role  where user_name=?  AND user_password=? AND user.role_id=role.role_id";
		conn=db.getConnection();
		pst=conn.prepareStatement(sql);
		pst.setString(1, user.getUser_name());
		pst.setString(2,user.getUser_password());
		res=pst.executeQuery();
		UserEntity entity=null;
		if (res.next()) {
			entity=new UserEntity();
			entity.setUser_id(res.getInt(1));
			entity.setUser_name(res.getString("user_name"));
			entity.setRole_name(res.getString("role_name"));
		}
		db.closeConnection();
		return  entity; 
	}

	@Override
	public void saveInterview(Interview interview) throws Exception {
		String sql="INSERT INTO `interview` (`company_name`, `company_address`, `company_contacts`, `it_name`, `it_time`,`user_id`) VALUES (?, ?, ?, ?, ?,?) ";
		conn=db.getConnection();
		pst=conn.prepareStatement(sql);
		pst.setString(1, interview.getCompany_name());
		pst.setString(2, interview.getCompany_address());
		pst.setString(3, interview.getCompany_contacts());
		pst.setString(4, interview.getIt_name());
		pst.setDate(5, interview.getIt_time());
		pst.setInt(6, interview.getUser_id());
		pst.executeUpdate();
		db.closeConnection();
	}

}
