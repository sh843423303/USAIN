package com.jiyun.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 数据库连接驱动
 * @author 浩
 *
 */
public class DbConnectionUtil {

	private Connection connection;
//获取数据库连接
	public Connection getConnection() throws Exception {
		Class.forName(PropertiesReader.reader("DRIVER"));
		connection = DriverManager.getConnection(
				PropertiesReader.reader("URL"),
				PropertiesReader.reader("USERNAME"),
				PropertiesReader.reader("PASSWORD"));
		if (connection != null) {
			System.out.println("连接成功");
		} else {
			System.out.println("连接失败");
		}
		return connection;
	}
//关闭数据库连接
	public void closeConnection() throws Exception{
		if (connection!=null&&!connection.equals("")) {
			connection.close();
			System.out.println("数据库连接已关闭");
		}
	}
}
