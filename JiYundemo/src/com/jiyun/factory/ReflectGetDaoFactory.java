package com.jiyun.factory;
/**
 * 反射获取daoInstance实现工厂类
 * @author 浩
 */
public class ReflectGetDaoFactory {

	private static ReflectGetDaoFactory factory;
	public static ReflectGetDaoFactory getFactory() {
		if (factory!=null) {
			return factory;
		}else {
			factory=new ReflectGetDaoFactory();
			return factory;
		}
	}
	public Object obj;
	public <T>Object getInstance(Class<T> objclass)	throws Exception{//objclass参数传入某个类信息
		obj=objclass.newInstance();//实例化对象
		return obj;
	}
}
