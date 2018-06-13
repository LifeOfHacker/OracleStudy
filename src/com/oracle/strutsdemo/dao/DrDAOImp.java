package com.oracle.strutsdemo.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import com.oracle.strutsdemo.model.bean.Dr;
import com.oracle.strutsdemo.model.bean.DrImage;

public class DrDAOImp extends BaseDAOImp  implements DrDao {
	private ArrayList<Dr>  drs=null;//定义一个集合存储查询出来的所有钻戒信息
	private ResultSet rs=null;
	private Dr  d=null;
	
	//pageBean_sql作为全局变量，存储有附加条件搜索之后的查询语句，用于统计count(drId),确定搜索的最大钻戒数量
	private String pageBean_sql="select count(drId)  from  drmessage  where  1=1";	

	public DrDAOImp() {
		super();
	}

	public boolean add(Object o) {
		return false;
	}

	public boolean delete(Object id) {
		return false;
	}

	public boolean update(Object o) {
		return false;
	}

	public Object list() {
		return null;
	}
	/**
	 * 根据传入的数量查询出最近的指定数量的钻戒信息，
	 * 暂时没有使用这个函数
	 * 暂时没有应用
	 */
	public ArrayList<Dr>  listRecentDrsByCount(int count){
		drs=new  ArrayList<Dr>();
		try {
			rs=getSta().executeQuery("select *  from  drmessage order by  drid ASC  limit "+count);
			while(rs.next())
			{
				d=parsetResultToDr(rs);
				drs.add(d);		//添加到集合中
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(null, rs);
		return  drs;
	}
	/**
	 * 用于lists页面的分页功能
	 */
	public ArrayList<Dr> listDrByPage(int page, int count) {
		System.out.println(count+" ok2");
		drs=new  ArrayList<Dr>();
		try {
			rs = getSta().executeQuery("select *  from  drmessage  limit " + (page-1)*count + " , " + count + "");
			while (rs.next()) {
				d=parsetResultToDr(rs);
				drs.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(drs.size());
		disposeResource(null, rs);
		return drs;
	}
	/**
	 * 查询出钻戒信息表有多少条数据
	 * 返回全部数量
	 */
	public int getAllCountOfDrs() {
		int  n=0;
		try {
			  rs=getSta().executeQuery(pageBean_sql);
			  rs.next();		//指针默认在第一行之前，所以需要next激活
			  n=rs.getInt(1);	//返回数量
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(null, rs);
		return n;
	}
	
	

	//需要推广的商品分页显示
	public ArrayList<Dr> getAllDrByTuiguangByPage(int page,int count) {
		drs=new  ArrayList<Dr>();
		try {
			rs=getSta().executeQuery("select *  from  drmessage   where  DRExtension=1  limit  "+(page-1)*count+","+count);
			while(rs.next())
			{
				d=parsetResultToDr(rs);
				drs.add(d);
			}
			System.out.println(drs.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(null, rs);
		return  drs;
	}

	@Override
	//单个钻戒详细信息
	public Dr getDrInfoByDrId(int drId) {
		try {
			rs=getSta().executeQuery("select *  from  drmessage  where drid="+drId);
			if(rs.next())
			{
				d=parsetResultToDr(rs);	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(null, rs);
		return  d;
	}

	public Set<DrImage> getDrImagesByDrId(int drId) {
		Set<DrImage>  imgs=new HashSet<>();
		try {
			ResultSet  rs=getSta().executeQuery("select *  from drImages where drid="+drId);
			while(rs.next())
			{
				DrImage  img=new DrImage();
				img.setImageId(rs.getInt("imageid"));
				img.setDrId(rs.getInt("drid"));		
				img.setImagePath(rs.getString("imagepath"));
				imgs.add(img);		//存入集合
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(null, rs);
		return imgs;
	}
	
	/**
	 * 根据传入的数量查询出最近的指定数量的钻戒信息
	 * 条件有很多种不同，那么sql语句就应该有对应的变动
	 */
	public ArrayList<Dr> searchDrsByCondition(String priceOpition, String weightOpition, String materialOpition, int page, int count) {
		drs=new  ArrayList<Dr>();
		String SQL="select *  from  drmessage  where  1=1";
		String addSQL="";
		if(priceOpition!=null&&!priceOpition.equals("0")) {			//价格
			if(priceOpition.equals("1")) {
				addSQL+="   and  drPrice <= 5000 ";
			}
			if(priceOpition.equals("2")) {
				addSQL+="   and  drPrice>= 5000 and drPrice <= 10000 ";
			}
			if(priceOpition.equals("3")) {
				addSQL+="   and  drPrice>= 10000 and drPrice <= 20000 ";
			}
			if(priceOpition.equals("4")) {
				addSQL+="   and  drPrice>= 20000 ";
			}			
		}
		if(weightOpition!=null&&!weightOpition.equals("0")) {			//总重量
			if(weightOpition.equals("1")) {
				addSQL+="   and  (drWeight = '10分' or drWeight = '5分') ";
			}
			if(weightOpition.equals("2")) {
				addSQL+="   and  (drWeight = '20分' or drWeight = '30分') ";
			}
			if(weightOpition.equals("3")) {
				addSQL+="   and  (drWeight = '40分' or  drWeight = '50分') ";
			}
			if(weightOpition.equals("4")) {
				addSQL+="   and  (drWeight = '50分' or  drWeight = '80分' or drWeight = '1克拉') ";
			}
			if(weightOpition.equals("5")) {
				addSQL+="   and  (drWeight = '1克拉' or  drWeight = '2克拉' or drWeight = '5克拉') ";
			}
		}
		if(materialOpition!=null&&!materialOpition.equals("0")) {		//材质
			if(materialOpition.equals("1")) {
				addSQL+="   and  drMaterial = 'PT950' ";
			}
			if(materialOpition.equals("2")) {
				addSQL+="   and  drMaterial = '18K白金' ";
			}
			if(materialOpition.equals("3")) {
				addSQL+="   and  drMaterial = '18K黄金' ";
			}
			if(materialOpition.equals("4")) {
				addSQL+="   and  drMaterial = '18K玫瑰金' ";
			}						
		}
		pageBean_sql="select count(drId)  from  drmessage  where  1=1  "+addSQL;		//
		System.out.println("pageBean_sql:"+pageBean_sql);
		SQL+=addSQL+" limit " + (page-1)*count + " , " + count + "";
		System.out.println(SQL);
		
		try {
			rs=getSta().executeQuery(SQL);
			while(rs.next())
			{
				d=parsetResultToDr(rs);	
				drs.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(null, rs);
		return  drs;
	}
	/**
	 * 这个方法用来处理关键字搜索查询数据库后的结果集
	 */
	public ArrayList<Dr> searchAllByKey(String key, int page, int count) {
		drs=new  ArrayList<Dr>();
		String[] keys=key.split("\\s+");		//空格,回车,换行等空白符
		try {
			rs = getSta().executeQuery("select *  from  drmessage  limit 1");
			ResultSetMetaData  data=(ResultSetMetaData) rs.getMetaData();	//字段
			String sql="select * from drmessage  where 1=0  or";
			String addSQL="";
			String[] columnName=new String[data.getColumnCount()];
			for(int n=1;n<=data.getColumnCount();n++)
			{
				columnName[n-1]=data.getColumnLabel(n);
			}
			for(String k:keys) {
				addSQL+="  (  1=0";
				for(String column:columnName)
				{
					System.out.println(column);
					addSQL+="  or  "+column+" like  '%"+k+"%' ";
					System.out.println("en:"+addSQL);
				}
				addSQL+=" ) and";
				System.out.println(addSQL);
			}
			addSQL=addSQL.substring(0, addSQL.length()-3);
			sql+=addSQL+" limit " + (page-1)*count + " , " + count + "";		//分页
			System.out.println("sql:"+sql);
			pageBean_sql="select count(drId)  from  drmessage  where  1=0 or "+addSQL;		//
			System.out.println("pageBean_sql:"+pageBean_sql);
			rs=getSta().executeQuery(sql);
			while(rs.next()) {
				Dr c=parsetResultToDr(rs);
				drs.add(c);
			}
			System.out.println("sql:"+drs.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(null, rs);
		return drs;
	}
	/*
	 * 作为一个工具类，供其他类调用
	 * 这个方法用来处理查询数据库后的结果集
	 */
	public Dr parsetResultToDr(ResultSet rs) {
		try {
			d = new Dr();
			d.setDrId(rs.getInt("drId"));				//ID
			d.setDrBrand(rs.getString("drBrand"));		//品牌
			d.setDrSeries(rs.getString("drSeries"));	//系列
			d.setDrPrice(rs.getFloat("drPrice"));		//售价
			d.setDrSales(rs.getInt("drSales"));			//销量
			d.setDrSize(rs.getString("drSize"));		//尺寸
			d.setDrNumber(rs.getInt("drNumber"));		//数量
			d.setDrWeight(rs.getString("drWeight"));	//总重量
			d.setDrCleanliness(rs.getString("drCleanliness"));	//净度
			d.setDrColor(rs.getString("drColor"));		//颜色
			d.setDrCutting(rs.getString("drCutting"));	//切工
			d.setDrMaterial(rs.getString("drMaterial"));	//材质
			d.setDRFirstPicture(rs.getString("DRFirstPicture"));	//首图
			d.setDRDescription(rs.getString("DRDescription"));		//描述
			d.setDRExtension(rs.getBoolean("DRExtension"));		//推广
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}


	
	
}
