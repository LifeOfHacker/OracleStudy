package com.oracle.strutsdemo.dao;

import java.util.ArrayList;
import java.util.Set;

import com.oracle.strutsdemo.model.bean.Dr;
import com.oracle.strutsdemo.model.bean.DrImage;

public interface DrDao  extends BaseDAO{

	public ArrayList<Dr> SearchDr(String pinpai,String price, String minshuliang,String maxshuliang, String chundu);
	
	public ArrayList<Dr> listDr();
	/**
	 * 根据id删除dr
	 * **/
	public boolean deleteDr(int drid);
	/**
	 * 添加Dr
	 * **/
	public boolean addDr(Dr d);
	//根据id修改信息
	public boolean updateDr(int id,Dr d);
 	/**
	 * 设计一个可以根据用户传入的数量查询显示出最近发布的钻戒信息
	 */
	public ArrayList<Dr>  listRecentDrsByCount(int count);
	
	
	/**
	 * 定义一个查询需要推广显示到滚动区域钻戒信息的方法
	 */
	public  ArrayList<Dr>  getAllDrByTuiguang();
	
	/**
	 * 
	 * @param drId 要查询的钻戒ID
	 * @return  一个查询并封装好的Dr对象
	 */
	public Dr  getDrInfoByDrId(int drId);
	
	/**
	 * 根据钻戒编号查询钻戒对应的图片的方法
	 * @param drId
	 * @return
	 */
	public   abstract  Set<DrImage>  getDrImagesByDrId(int drId);
	
	/**
	 * 
	 * @param 条件查询
	 * @return  返回查询并封装好的Dr对象集合
	 */
	public    ArrayList<Dr>  searchDrsByCondition(String priceOpition, String weightOpition, String materialOpition, int page,int count);
	/**
	 * 
	 * @param 关键字查询
	 * @return  返回查询并封装好的Dr对象集合
	 */
	public ArrayList<Dr> searchAllByKey(String key, int page,int count);
	
	/**
	 * 分页查询钻戒信息的方法
	 * @param page   传入的页面
	 * @param count  传入的每页查看多少条数据
	 * @return   返回这一页的count条信息
	 */
	public ArrayList<Dr>  listDrByPage(int page,int count);
	
	/**
	 * 查询出钻戒信息表有多少条数据
	 * @return
	 */
	public int getAllCountOfDrs();
}
