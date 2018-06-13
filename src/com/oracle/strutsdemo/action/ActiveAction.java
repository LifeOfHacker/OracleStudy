package com.oracle.strutsdemo.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.mysql.fabric.Response;
import com.oracle.strutsdemo.dao.ActiveDao;
import com.oracle.strutsdemo.dao.ActiveDaoImp;
import com.oracle.strutsdemo.model.bean.Active;

public class ActiveAction {
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	private ArrayList<Active> act;
	private Active a;
	private ActiveDao dao;
	
	public ArrayList<Active> getAct() {
		return act;
	}
	public void setAct(ArrayList<Active> act) {
		this.act = act;
	}
	public Active getA() {
		return a;
	}
	public void setA(Active a) {
		this.a = a;
	}
	public ActiveDao getDao() {
		return dao;
	}
	public void setDao(ActiveDao dao) {
		this.dao = dao;
	}
	
	private int active_id;
	private String active_title;
	private String active_begintime;
	private String active_finishtime;
	private String active_img;
	private String active_des;
	private String active_people;
	
	
	public int getActive_id() {
		return active_id;
	}
	public void setActive_id(int active_id) {
		this.active_id = active_id;
	}
	public String getActive_title() {
		return active_title;
	}
	public void setActive_title(String active_title) {
		this.active_title = active_title;
	}
	public String getActive_begintime() {
		return active_begintime;
	}
	public void setActive_begintime(String active_begintime) {
		this.active_begintime = active_begintime;
	}
	public String getActive_finishtime() {
		return active_finishtime;
	}
	public void setActive_finishtime(String active_finishtime) {
		this.active_finishtime = active_finishtime;
	}
	public String getActive_img() {
		return active_img;
	}
	public void setActive_img(String active_img) {
		this.active_img = active_img;
	}
	public String getActive_des() {
		return active_des;
	}
	public void setActive_des(String active_des) {
		this.active_des = active_des;
	}
	public String getActive_people() {
		return active_people;
	}
	public void setActive_people(String active_people) {
		this.active_people = active_people;
	}
	
	
	
	
	public ActiveAction() {
	dao=new ActiveDaoImp();
}
	public String SearchActive() {	
		act=dao.getAllActiveInfo();		
		if(act!=null) {
			return "success";
		}else{
			return "null";
		}		
	}
	public String AddActiveInfo() {
		Active aa=new Active();
		
		aa.setActive_id(active_id);
		aa.setActive_title(active_title);
		aa.setActive_begintime(active_begintime);
		aa.setActive_finishtime(active_finishtime);
		aa.setActive_img(active_img);
		aa.setActive_des(active_des);
		aa.setActive_people(active_people);
		
		boolean result=dao.AddActiveInfo(aa);
		
		if(result==true) {
			return "success";
		}else {
			return "false";
		}
	}
	public void DeleteActiveInfo() {
		System.out.println("进入了action");
		response.setContentType("text/html;charset=utf-8");
		boolean result=dao.DeleteActiveInfo(active_id);
		
		try {
			PrintWriter out=response.getWriter();
			if(result==true) {
				out.write("true");
			}else {
				out.write("false");
			}
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	
}
