package com.jiyun.dbconnection;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 读取dataSource.properties的工具类
 * 
 * @author 浩
 */
public class PropertiesReader {

	// 读取jdbcDao.properties中常量
	public static String reader(String key) {
		String str = null;
		InputStream inputStream = PropertiesReader.class.getClassLoader()
				.getResourceAsStream("dataSource.properties");
		Properties properties = new Properties();
		try {
			properties.load(inputStream);
			str = properties.getProperty(key);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return str;
	}

	public static void main(String[] args) {
		System.out.println(PropertiesReader.reader("DRIVER"));
	}
}
