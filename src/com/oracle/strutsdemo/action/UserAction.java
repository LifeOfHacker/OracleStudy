package com.oracle.strutsdemo.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.json.JSONArray;
import org.json.JSONObject;


import com.oracle.strutsdemo.dao.UserDAO;
import com.oracle.strutsdemo.dao.UserDAOImp;
import com.oracle.strutsdemo.model.bean.User;

import com.oracle.strutsdemo.util.Responser;

public class UserAction implements RequestAware{
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpServletResponse response=ServletActionContext.getResponse();
	private int userid;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	private  User  u;
	private File headImg;
	private String headImgContentType;
	private String headImgFileName;
	public File getHeadImg() {
		return headImg;
	}

	public void setHeadImg(File headImg) {
		this.headImg = headImg;
	}

	public String getHeadImgContentType() {
		return headImgContentType;
	}

	public void setHeadImgContentType(String headImgContentType) {
		this.headImgContentType = headImgContentType;
	}

	public String getHeadImgFileName() {
		return headImgFileName;
	}

	public void setHeadImgFileName(String headImgFileName) {
		this.headImgFileName = headImgFileName;
	}

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
				//System.out.println(u.getUserid());
				j.put("userid", u.getUserid());
				j.put("ShouJiHao", u.getShouJiHao());
				j.put("Password", u.getPassword());
				j.put("YouXiang", u.getYouXiang());
				j.put("NiCheng", u.getNiCheng());
				j.put("ZhenShiXingMing", u.getZhenShiXingMing());
				j.put("XingBie", u.getXingBie());
				j.put("birth", String.valueOf(u.getNian())+"/"+String.valueOf(u.getYue())+"/"+String.valueOf(u.getRi()));
				j.put("diqu", u.getSheng()+"/"+u.getShi());
				j.put("XiangXiDiZhi", u.getXiangXiDiZhi());
				j.put("YouBian", u.getYouBian());
				j.put("image", "<img src='"+u.getTouXiang()+"' style='width:20px;height:20px' />");
				j.put("ZuoJi", u.getZuoJi());
				js.put(j);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		try {
			Responser.responseToJson(ServletActionContext.getResponse(), ServletActionContext.getRequest(), js.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 增加用户
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addUserInfo(){
		System.out.println("进入了");
		System.out.println(headImg);
		User user=new User();
		try {
            System.out.println(headImg);
            //处理头像
           if(headImg != null){
                //1.保存头像到upload/user
                //获取保存路径的绝对地址
                String filePath = ServletActionContext.getServletContext().getRealPath("/images/uploadFiles");
                System.out.println(filePath);
                String fileName = UUID.randomUUID().toString().replaceAll("-", "")+headImgFileName.substring(headImgFileName.lastIndexOf("."));
                //复制文件
                FileUtils.copyFile(headImg, new File(filePath, fileName));
                //2、设置用户头像路径
                System.out.println(fileName);
                user.setTouXiang("images/uploadFiles" + fileName);		
        }
    } catch (Exception e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
		user.setUserid(this.u.getUserid());//用户编号
		user.setShouJiHao(this.u.getShouJiHao());
		user.setPassword(this.u.getPassword());
		user.setYouXiang(this.u.getYouXiang());
		user.setNiCheng(this.u.getNiCheng());
		user.setZhenShiXingMing(this.u.getZhenShiXingMing());
		user.setXingBie(this.u.getXingBie());
		user.setNian(this.u.getNian());
		user.setYue(this.u.getYue());
		user.setRi(this.u.getRi());
		user.setSheng(this.u.getSheng());
		user.setShi(this.u.getShi());
		user.setXiangXiDiZhi(this.u.getXiangXiDiZhi());
		user.setYouBian(this.u.getYouBian());
		user.setZuoJi(this.u.getZuoJi());
		System.out.println(this.u.getZuoJi());
		boolean result=dao.adduser(user);
		if(result) {
			//ServletActionContext.getRequest().getSession().setAttribute("shoujihao", u);
			System.out.println("成功");
		}else
		{
			System.out.println("失败");
		}
	}
	/**
	 * 删除用户
	 */
	public void deleteUserInfoById() {
		response.setContentType("text/html;charset=utf-8");
		boolean result=dao.deleteUser(userid);
		System.out.println(result);
		System.out.println(userid);
		try {
			PrintWriter  out=response.getWriter();
			if(result==true) {
				out.write("ture");
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
	 * 查找用户
	 */
	public void searchUserInfoById() {
		response.setContentType("text/html;charset=utf-8");
		User n=dao.getUserInfoByUserId(userid);
		System.out.println(userid);
		ServletActionContext.getRequest().setAttribute("userid",userid);
		ServletActionContext.getRequest().getSession().setAttribute("shoujihao", n);
	}
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		
	}
	
}