package com.oracle.strutsdemo.model.bean;

import java.io.Serializable;

public class User    implements Serializable{
	
	private int userid;				//编号
	private String password;		//密码
	private String touXiang;		//头像
	private String youXiang;		//邮箱
	private String niCheng;			//昵称
	private String zhenShiXingMing;	//真实姓名
	private String xingBie;			//性别
	private int nian;				//出生年
	private int yue;				//出生月
	private int ri;					//出生日
	private String sheng;			//省
	private String shi;				//市
	private String xian;			//县
	private String xiangXiDiZhi;	//详细地址
	private int youBian;			//邮编
	private String shouJiHao;		//手机号
	private String zuoJi;				//座机
	public int getUserid() {
		return userid;
	}
	public void setUserid(int i) {
		this.userid = i;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTouXiang() {
		return touXiang;
	}
	public void setTouXiang(String touXiang) {
		this.touXiang = touXiang;
	}
	public String getYouXiang() {
		return youXiang;
	}
	public void setYouXiang(String youXiang) {
		this.youXiang = youXiang;
	}
	public String getNiCheng() {
		return niCheng;
	}
	public void setNiCheng(String niCheng) {
		this.niCheng = niCheng;
	}
	public String getZhenShiXingMing() {
		return zhenShiXingMing;
	}
	public void setZhenShiXingMing(String zhenShiXingMing) {
		this.zhenShiXingMing = zhenShiXingMing;
	}
	public String getXingBie() {
		return xingBie;
	}
	public void setXingBie(String xingBie) {
		this.xingBie = xingBie;
	}
	public int getNian() {
		return nian;
	}
	public void setNian(int nian) {
		this.nian = nian;
	}
	public int getYue() {
		return yue;
	}
	public void setYue(int yue) {
		this.yue = yue;
	}
	public int getRi() {
		return ri;
	}
	public void setRi(int ri) {
		this.ri = ri;
	}
	public String getSheng() {
		return sheng;
	}
	public void setSheng(String sheng) {
		this.sheng = sheng;
	}
	public String getShi() {
		return shi;
	}
	public void setShi(String shi) {
		this.shi = shi;
	}
	public String getXian() {
		return xian;
	}
	public void setXian(String xian) {
		this.xian = xian;
	}
	public String getXiangXiDiZhi() {
		return xiangXiDiZhi;
	}
	public void setXiangXiDiZhi(String xiangXiDiZhi) {
		this.xiangXiDiZhi = xiangXiDiZhi;
	}
	public int getYouBian() {
		return youBian;
	}
	public void setYouBian(int youBian) {
		this.youBian = youBian;
	}
	public String getShouJiHao() {
		return shouJiHao;
	}
	public void setShouJiHao(String shouJiHao) {
		this.shouJiHao = shouJiHao;
	}
	public String getZuoJi() {
		return zuoJi;
	}
	public void setZuoJi(String zuoJi) {
		this.zuoJi = zuoJi;
	}
	public User(int userid, String password, String touXiang, String youXiang, String niCheng,
			String zhenShiXingMing, String xingBie, int nian, int yue, int ri, String sheng, String shi, String xian,
			String xiangXiDiZhi, int youBian, String shouJiHao, String zuoJi) {
		super();
		this.userid = userid;
		this.password = password;
		this.touXiang = touXiang;
		this.youXiang = youXiang;
		this.niCheng = niCheng;
		this.zhenShiXingMing = zhenShiXingMing;
		this.xingBie = xingBie;
		this.nian = nian;
		this.yue = yue;
		this.ri = ri;
		this.sheng = sheng;
		this.shi = shi;
		this.xian = xian;
		this.xiangXiDiZhi = xiangXiDiZhi;
		this.youBian = youBian;
		this.shouJiHao = shouJiHao;
		this.zuoJi = zuoJi;
	}
	public User() {
		super();

	}

}
