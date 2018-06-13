package com.oracle.strutsdemo.dao;

import com.oracle.strutsdemo.model.bean.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class UserDAOImp extends BaseDAOImp implements UserDAO {
	private User u=null;	

	@Override
	public boolean delete(Object id) {
		return false;
	}
	/**
	 * 删除用户
	 */
	@Override
	public boolean deleteUser(int userid) {
		Statement sta=getSta();
		int count;
		boolean result=false;
		try {
			count=sta.executeUpdate("delete from usermessage where userid="+userid+"");
			result=(count>0)?true:false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return result;
	}
	/**
	 * 增加用户
	 */
	@Override
	public boolean adduser(Object o) {
		User user=(User)o;
		PreparedStatement  sta=null;
		boolean result=false;
		try {
			sta=getPreSta("insert into usermessage(userid,youxiang,nicheng,zhenshixingming,xingbie,chusheng_nian,chusheng_yue,chusheng_ri,diqu_sheng,diqu_shi,xiangxidizhi,youbian,shoujihao,zuoji,password,touxiang) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			sta.setInt(1, user.getUserid());
			sta.setString(2, user.getYouXiang());
			sta.setString(3, user.getNiCheng());
			sta.setString(4, user.getZhenShiXingMing());
			sta.setString(5, user.getXingBie());
			sta.setInt(6, user.getNian());
			sta.setInt(7, user.getYue());
			sta.setInt(8, user.getRi());
			sta.setString(9, user.getSheng());
			sta.setString(10, user.getShi());
			sta.setString(11, user.getXiangXiDiZhi());
			sta.setInt(12, user.getYouBian());
			sta.setString(13, user.getShouJiHao());
			sta.setString(14, user.getZuoJi());	
			sta.setString(15, user.getPassword());
			sta.setString(16,user.getTouXiang());
			int count=sta.executeUpdate();
			result=(count>0)?true:false;		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * 管理员登录
	 */

	@Override
	public User login(String shouJiHao, String password) {
		PreparedStatement  sta=null;
		ResultSet rs=null;
		try {
			sta=getPreSta("select *  from usermessage  where  shoujihao=? and password=?");
			sta.setString(1, shouJiHao);
			sta.setString(2, password);
			
			rs=sta.executeQuery();
			//System.out.println(shouJiHao);
			//System.out.println(password);
			while(rs.next()) {
				//System.out.println(rs.getInt("USERID"));
				u=parsetResultToUser(rs);
			}				
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(sta, rs);
		return u;
	}
	
	/*
	 * 作为一个工具类，供其他类调用
	 * 这个方法用来处理查询数据库后的结果集
	 */
	public User parsetResultToUser(ResultSet rs) {
		try { 
			u=new User();
			u.setUserid(rs.getInt("USERID"));
			u.setPassword(rs.getString("PASSWORD"));
			u.setTouXiang(rs.getString("TOUXIANG"));
			u.setYouXiang(rs.getString("YOUXIANG"));
			u.setNiCheng(rs.getString("NICHENG"));
			u.setZhenShiXingMing(rs.getString("ZHENSHIXINGMING"));
			u.setXingBie(rs.getString("XINGBIE"));
			u.setNian(rs.getInt("CHUSHENG_NIAN"));
			u.setYue(rs.getInt("CHUSHENG_YUE"));
			u.setRi(rs.getInt("CHUSHENG_RI"));
			u.setSheng(rs.getString("DIQU_SHENG"));
			u.setShi(rs.getString("DIQU_SHI"));
			u.setXian(rs.getString("DIQU_XIAN"));
			u.setXiangXiDiZhi(rs.getString("XIANGXIDIZHI"));
			u.setYouBian(rs.getInt("YOUBIAN"));
			u.setShouJiHao(rs.getString("SHOUJIHAO"));
			u.setZuoJi(rs.getString("ZUOJI"));
		}catch(Exception e) {
			e.printStackTrace();
		}
		return u;
	}
	
	@Override
	public User getUserInfoByUserId(int userid) {
		User  user=null;
		PreparedStatement  sta=null;
		ResultSet rs=null;
		try {
			sta=getPreSta("select *  from usermessage where userid=?");
			sta.setInt(1, userid);
			rs=sta.executeQuery();
			while(rs.next()) {
				if(rs.getInt("USERID")!=0)
				{
					u=new User();
					u.setUserid(rs.getInt("USERID"));
					u.setPassword(rs.getString("PASSWORD"));
					u.setTouXiang(rs.getString("TOUXIANG"));
					u.setYouXiang(rs.getString("YOUXIANG"));
					u.setNiCheng(rs.getString("NICHENG"));
					u.setZhenShiXingMing(rs.getString("ZHENSHIXINGMING"));
					u.setXingBie(rs.getString("XINGBIE"));
					u.setNian(rs.getInt("CHUSHENG_NIAN"));
					u.setYue(rs.getInt("CHUSHENG_YUE"));
					u.setRi(rs.getInt("CHUSHENG_RI"));
					u.setSheng(rs.getString("DIQU_SHENG"));
					u.setShi(rs.getString("DIQU_SHI"));
					u.setXian(rs.getString("DIQU_XIAN"));
					u.setXiangXiDiZhi(rs.getString("XIANGXIDIZHI"));
					u.setYouBian(rs.getInt("YOUBIAN"));
					u.setShouJiHao(rs.getString("SHOUJIHAO"));
					u.setZuoJi(rs.getString("ZUOJI"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;	
		}

	
	@Override
	public boolean checkUserExsit(String shoujihao) {
		boolean result=false;
		Statement  sta=null;
		ResultSet  rs=null;
		try {
			sta=getSta();
			  rs=sta.executeQuery("select  count(userid)  from  usermessage where shoujihao='"+shoujihao+"'");
			rs.next();
			result=(rs.getInt(1)>0)?true:false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(sta, rs);
		return result;
	}
	/**
	 * 分页显示用户
	 */
	@Override
	public ArrayList<User> listUserByPage(int count, int page) {
		ArrayList<User>  users=new ArrayList<>();
		PreparedStatement  sta=null;
		ResultSet rs=null;
		try {
			  sta=getPreSta("select *  from usermessage order by userid  limit  ?,?");
			sta.setInt(1, (page-1)*count);
			sta.setInt(2, count);
			rs=sta.executeQuery();
			while(rs.next()) {
				if(rs.getInt("USERID")!=0)
				{
					u=new User();
					u.setUserid(rs.getInt("USERID"));
					u.setPassword(rs.getString("PASSWORD"));
					u.setTouXiang(rs.getString("TOUXIANG"));
					u.setYouXiang(rs.getString("YOUXIANG"));
					u.setNiCheng(rs.getString("NICHENG"));
					u.setZhenShiXingMing(rs.getString("ZHENSHIXINGMING"));
					u.setXingBie(rs.getString("XINGBIE"));
					u.setNian(rs.getInt("CHUSHENG_NIAN"));
					u.setYue(rs.getInt("CHUSHENG_YUE"));
					u.setRi(rs.getInt("CHUSHENG_RI"));
					u.setSheng(rs.getString("DIQU_SHENG"));
					u.setShi(rs.getString("DIQU_SHI"));
					u.setXian(rs.getString("DIQU_XIAN"));
					u.setXiangXiDiZhi(rs.getString("XIANGXIDIZHI"));
					u.setYouBian(rs.getInt("YOUBIAN"));
					u.setShouJiHao(rs.getString("SHOUJIHAO"));
					u.setZuoJi(rs.getString("ZUOJI"));
					
				}
		
				users.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(sta,	rs);
		return users;
	}

	@Override
	public int getAllCountOfUser() {
		int count=0;
		Statement  sta=null;
		ResultSet  rs=null;
		try {
			sta=getSta();
			  rs=sta.executeQuery("select  count(userid)  from  usermessage");
			rs.next();
			count=rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(sta, rs);
		return count;
	}

	@Override
	public boolean add(Object o) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public Object list() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
