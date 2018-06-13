package com.oracle.strutsdemo.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import org.json.JSONArray;
import org.json.JSONObject;

import com.oracle.strutsdemo.dao.DrDAOImp;
import com.oracle.strutsdemo.dao.DrDao;
import com.oracle.strutsdemo.model.bean.Dr;
import com.oracle.strutsdemo.util.Responser;

public class DrAction {
	HttpServletRequest request=ServletActionContext.getRequest();
	 HttpServletResponse response=ServletActionContext.getResponse();
	 
	 private int drid;
	public int getDrid() {
		return drid;
	}
	public void setDrid(int drid) {
		this.drid = drid;
	}
	private int searchbianhao;
	private String searchpinpai;
	private String searchxilie;
	private String searchmin;
	private String searchmax;
	private String searchchundu;
	private String searchjiage;
	private ArrayList<Dr> searchdrs;
	
	public ArrayList<Dr> getSearchdrs() {
		return searchdrs;
	}
	public void setSearchdrs(ArrayList<Dr> searchdrs) {
		this.searchdrs = searchdrs;
	}
	public String getSearchjiage() {
		return searchjiage;
	}
	public void setSearchjiage(String searchjiage) {
		this.searchjiage = searchjiage;
	}
	public String getSearchmin() {
		return searchmin;
	}
	public void setSearchmin(String searchmin) {
		this.searchmin = searchmin;
	}
	public String getSearchmax() {
		return searchmax;
	}
	public void setSearchmax(String searchmax) {
		this.searchmax = searchmax;
	}
	public String getSearchchundu() {
		return searchchundu;
	}
	public void setSearchchundu(String searchchundu) {
		this.searchchundu = searchchundu;
	}
	public int getSearchbianhao() {
		return searchbianhao;
	}
	public void setSearchbianhao(int searchbianhao) {
		this.searchbianhao = searchbianhao;
	}
	public String getSearchpinpai() {
		return searchpinpai;
	}
	public void setSearchpinpai(String searchpinpai) {
		this.searchpinpai = searchpinpai;
	}
	public String getSearchxilie() {
		return searchxilie;
	}
	public void setSearchxilie(String searchxilie) {
		this.searchxilie = searchxilie;
	}
	private int  bianhao;
	private String  pinpai;
	private String xilie;
	private float  jiage;
	private int shuliang;		
	private String shangpingming;
	private int  drNumber;
	private int xiaoliang;
	
	public int getXiaoliang() {
		return xiaoliang;
	}
	public void setXiaoliang(int xiaoliang) {
		this.xiaoliang = xiaoliang;
	}
	public int getBianhao() {
		return bianhao;
	}
	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
	}
	public String getPinpai() {
		return pinpai;
	}
	public void setPinpai(String pinpai) {
		this.pinpai = pinpai;
	}
	public String getXilie() {
		return xilie;
	}
	public void setXilie(String xilie) {
		this.xilie = xilie;
	}
	public float getJiage() {
		return jiage;
	}
	public void setJiage(float jiage) {
		this.jiage = jiage;
	}
	public int getShuliang() {
		return shuliang;
	}
	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	public String getShangpingming() {
		return shangpingming;
	}
	public void setShangpingming(String shangpingming) {
		this.shangpingming = shangpingming;
	}
	public int getDrNumber() {
		return drNumber;
	}
	public void setDrNumber(int drNumber) {
		this.drNumber = drNumber;
	}
	public String getChicun() {
		return chicun;
	}
	public void setChicun(String chicun) {
		this.chicun = chicun;
	}
	public String getChundu() {
		return chundu;
	}
	public void setChundu(String chundu) {
		this.chundu = chundu;
	}
	public String getYanse() {
		return yanse;
	}
	public void setYanse(String yanse) {
		this.yanse = yanse;
	}
	public String getQiegong() {
		return qiegong;
	}
	public void setQiegong(String qiegong) {
		this.qiegong = qiegong;
	}
	public String getCaizhi() {
		return caizhi;
	}
	public void setCaizhi(String caizhi) {
		this.caizhi = caizhi;
	}
	public String getHeadImage() {
		return headImage;
	}
	public void setHeadImage(String headImage) {
		this.headImage = headImage;
	}
	public String getMiaoshu() {
		return miaoshu;
	}
	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}
	public DrDao getDao() {
		return dao;
	}
	public void setDao(DrDao dao) {
		this.dao = dao;
	}
	public void setDr(Dr dr) {
		this.dr = dr;
	}
	private String chicun;
	private String chundu;
	private String yanse;
	private String qiegong;
	private String caizhi;
	private String headImage;
	private String miaoshu;
	private ArrayList<Dr> drs;
	public ArrayList<Dr> getDrs() {
		return drs;
	}
	public void setDrs(ArrayList<Dr> drs) {
		this.drs = drs;
	}
	private Dr  dr;
	
	public Dr getDr() {
		return dr;
	}
	public void setCar(Dr dr) {
		this.dr = dr;
	}
	private DrDao dao;
	public DrAction() {
		dao=new DrDAOImp();
	}
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
	/**
	 * 分页显示查询戒指信息的方法
	 */
	public void listDrs() {
		drs=dao.listDr();
		//System.out.println(drs.toString());
		//return "list";						
		JSONArray  js=new JSONArray();
		for(Dr d:drs) {
			try {
				JSONObject  j=new JSONObject();
				j.put("Drid", d.getDrId());
				j.put("pinpai", d.getDrBrand());
				j.put("xilie", d.getDrSeries());
				j.put("jiage", d.getDrPrice());
				j.put("xiaoliang", d.getDrSales());
				j.put("chicun", d.getDrSize());
				j.put("shuliang",d.getDrNumber());
				j.put("zhongliang", d.getDrWeight());
				j.put("chundu", d.getDrCleanliness());
				j.put("yanse", d.getDrColor());
				j.put("qiegong", d.getDrCutting());
				j.put("caizhi", d.getDrMaterial());
				j.put("image", "<img src='"+d.getDRFirstPicture()+"'  style='width:20px;height:20px;border:1px solid gray;border-radius: 10px;position: relative;'/>");
				j.put("miaoshu", d.getDRDescription());
				j.put("tuiguang", d.getDRExtension());
				js.put(j);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//System.out.println(js.toString());
		try {
			Responser.responseToJson(ServletActionContext.getResponse(), ServletActionContext.getRequest(), js.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 根据id删除信息的方法
	 */
	public void deleteDrInfoById() {
		response.setContentType("text/html;charset=utf-8");
		boolean result=dao.deleteDr(drid);
		System.out.println(result);
		System.out.println(drid);
		try {
			PrintWriter  out=response.getWriter();
			if(result==true) {
				out.write("true");
			}else if(result==false){
				out.write("false");
			}
			out.flush();
			out.close();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	/**
	 * 添加戒指信息的方法
	 */
	public String addDr() {
		System.out.println(bianhao);
		Dr d=new Dr();
		d.setDrId(bianhao);
		d.setDrBrand(shangpingming);
		d.setDrSeries(xilie);
		d.setDrPrice(jiage);
		d.setDrSales(xiaoliang);
		d.setDrSize(chicun);
		d.setDrNumber(shuliang);
		d.setDrWeight("60fen");
		d.setDrCleanliness(pinpai);
		
		d.setDrColor(yanse);
		d.setDrCutting(qiegong);
		d.setDrMaterial(caizhi);
		d.setDRFirstPicture("images/dr_temp/1.jpg");
		d.setDRDescription(miaoshu);
		
		//d.setDRExtension();
		
		
		System.out.println(d.toString());
		boolean result=dao.addDr(d);
		System.out.println(result);
		if(result==true) {
			return "addsuccess";
		}
		else {
			return "addfail";
		}
	}
	/**
	 * 修改戒指信息的方法
	 */
	public void updateDr() {
		System.out.println(bianhao);
		Dr d=new Dr();
		d.setDrId(bianhao);
		d.setDrBrand(shangpingming);
		d.setDrSeries(xilie);
		d.setDrPrice(jiage);
		d.setDrSales(xiaoliang);
		d.setDrSize(chicun);
		d.setDrNumber(shuliang);
		d.setDrWeight("60fen");
		d.setDrCleanliness(pinpai);
		
		d.setDrColor(yanse);
		d.setDrCutting(qiegong);
		d.setDrMaterial(caizhi);
		d.setDRFirstPicture("images/dr_temp/1.jpg");
		d.setDRDescription(miaoshu);
		
		//d.setDRExtension();
		
		
		System.out.println(d.toString());
		boolean result=dao.updateDr(bianhao, d);
		System.out.println(result);
		
	}
	/**
	 * 查询戒指信息的方法
	 */
	public String searchDr() {
		System.out.println("品牌："+searchpinpai+"价格:"+searchjiage+"min:"+searchmin+"max:"+searchmax+"chundu:"+searchchundu);
		searchdrs=dao.SearchDr(searchpinpai, searchjiage, searchmin,searchmax,searchchundu);
		System.out.println(searchdrs.toString());
		
		//return "searchDr";
		JSONArray  js=new JSONArray();
		for(Dr d:searchdrs) {
			try {
				JSONObject  j=new JSONObject();
				j.put("Drid", d.getDrId());
				j.put("pinpai", d.getDrBrand());
				j.put("xilie", d.getDrSeries());
				j.put("jiage", d.getDrPrice());
				j.put("xiaoliang", d.getDrSales());
				j.put("chicun", d.getDrSize());
				j.put("shuliang",d.getDrNumber());
				j.put("zhongliang", d.getDrWeight());
				j.put("chundu", d.getDrCleanliness());
				j.put("yanse", d.getDrColor());
				j.put("qiegong", d.getDrCutting());
				j.put("caizhi", d.getDrMaterial());
				j.put("image", "<img src='"+d.getDRFirstPicture()+"'  style='width:20px;height:20px;border:1px solid gray;border-radius: 10px;position: relative;'/>");
				j.put("miaoshu", d.getDRDescription());
				j.put("tuiguang", d.getDRExtension());
				js.put(j);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println(js.toString());
		try {
			Responser.responseToJson(ServletActionContext.getResponse(), ServletActionContext.getRequest(), js.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "searchDr";
	}
}
