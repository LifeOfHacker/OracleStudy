package com.oracle.strutsdemo.model.bean;

public class Active {
	private int active_id;
	private String active_title;
	private String active_begintime;
	private String active_finishtime;
	private String active_des;
	private String active_img;
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
	public String getActive_des() {
		return active_des;
	}
	public void setActive_des(String active_des) {
		this.active_des = active_des;
	}
	public String getActive_img() {
		return active_img;
	}
	public void setActive_img(String active_img) {
		this.active_img = active_img;
	}
	public String getActive_people() {
		return active_people;
	}
	public void setActive_people(String active_people) {
		this.active_people = active_people;
	}
	@Override
	public String toString() {
		return "Active [active_id=" + active_id + ", active_title=" + active_title + ", active_begintime="
				+ active_begintime + ", active_finishtime=" + active_finishtime + ", active_des=" + active_des
				+ ", active_img=" + active_img + ", active_people=" + active_people + "]";
	}
	public Active(int active_id, String active_title, String active_begintime, String active_finishtime,
			String active_des, String active_img, String active_people) {
		super();
		this.active_id = active_id;
		this.active_title = active_title;
		this.active_begintime = active_begintime;
		this.active_finishtime = active_finishtime;
		this.active_des = active_des;
		this.active_img = active_img;
		this.active_people = active_people;
	}
	public Active() {
		super();
	}
	

}
