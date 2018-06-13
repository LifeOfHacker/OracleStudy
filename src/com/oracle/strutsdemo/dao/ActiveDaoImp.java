package com.oracle.strutsdemo.dao;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

import com.oracle.strutsdemo.model.bean.Active;

public class ActiveDaoImp extends BaseDAOImp implements ActiveDao{
	private ArrayList<Active> act=null;//定义一个集合存储查询出的活动信息
	private ResultSet rs=null;
	private Statement sta;
	private Active a=null;
/**
 * 简洁代码复用的问题	
 * @param rs
 * @return
 */
	public Active SetActive(ResultSet rs) {		
		try {
			a=new Active();
			a.setActive_id(rs.getInt("active_id"));
			a.setActive_title(rs.getString("active_title"));
			a.setActive_begintime(rs.getString("active_begintime"));
			a.setActive_finishtime(rs.getString("active_finishtime"));
			a.setActive_img(rs.getString("active_img"));
			a.setActive_des(rs.getString("active_des"));
			a.setActive_people(rs.getString("active_people"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	
	@Override
	public ArrayList<Active> getAllActiveInfo() {
		act=new ArrayList<>();
		sta=getSta();
		try {
			rs=sta.executeQuery("select * from active");
			while(rs.next()) {
				act.add(SetActive(rs));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return act;
	}
/**
 * 添加信息的方法
 */
	
	@Override
	public boolean AddActiveInfo(Active a) {
		
		int count;
		boolean result=false;
		sta=getSta();
		try {
			
			count=sta.executeUpdate("insert into active values("+a.getActive_id()
			+",'"+a.getActive_title()
			+"','"+a.getActive_begintime()
			+"','"+a.getActive_finishtime()
			+"','"+a.getActive_img()
			+"','"+a.getActive_des()
			+"','"+a.getActive_people()+"')");
			
			result=(count>0)?true:false;
			
		} catch (Exception e) {
			
			e.printStackTrace();
			return false;
		}
		return result;
	}
/**
 * 删除活动的方法
 */
	@Override
	public boolean DeleteActiveInfo(int id) {
		System.out.println("1");
		boolean result=false;
		int count;
		sta=getSta();
		try {
			System.out.println("2");
			count=sta.executeUpdate("delete from active where active_id="+a.getActive_id()+"");
			result=(count>0)?true:false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return result;
	}

	@Override
	public ArrayList<Active> UpdateActiveInfo(int id) {
		return null;
	}
	@Override
	public boolean add(Object o) {
		return false;
	}

	@Override
	public boolean delete(Object id) {
		return false;
	}

	@Override
	public boolean update(Object o) {
		return false;
	}

	@Override
	public Object list() {
		return null;
	}
}
