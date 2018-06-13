package com.oracle.strutsdemo.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.json.JSONArray;
import org.json.JSONObject;

import com.oracle.strutsdemo.dao.UserDAO;
import com.oracle.strutsdemo.dao.UserDAOImp;
import com.oracle.strutsdemo.model.bean.User;
import com.oracle.strutsdemo.util.MD5;
import com.oracle.strutsdemo.util.Responser;

public class UserAction implements RequestAware{
	private Map<String,Object>  request=new HashMap<>();
	private  User  u;
	
	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}
	private  UserDAO  dao;
	private int page;
	private int rows;
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public UserAction() {
		dao=new UserDAOImp();
	}

	/**
	 * 登录方法
	 * @return
	 */

	public String   login() {
		//System.out.println(this.u.getShouJiHao());
		User u=dao.login(this.u.getShouJiHao(), this.u.getPassword());
		//System.out.println("resultUser:"+u);
		if(u!=null) {
			ServletActionContext.getRequest().getSession().setAttribute("shoujihao", u);
			return "success";
		}else
		{
			return "fail";
		}
	}
	
	/**
	 * 退出登录方法
	 * @return
	 */

	public String   logoff() {
		ServletActionContext.getRequest().getSession().removeAttribute("shoujihao");
		return "fail";
	}
	/**
	 * 用户分页查询
	 */
	public void listUserByPage() {
		ArrayList<User>  users=dao.listUserByPage(rows, page);
		JSONArray  js=new JSONArray();
		for(User u:users)
		{
			try {
				JSONObject  j=new JSONObject();
				j.put("userid", u.getUserid());
				j.put("shouJiHao", u.getShouJiHao());
				js.put(j);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		System.out.println(js.toString());
		try {
			Responser.responseToJson(ServletActionContext.getResponse(), ServletActionContext.getRequest(), js.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request=arg0;
	}

//	public void wxx() {
//		System.out.println("000");
//	}
}