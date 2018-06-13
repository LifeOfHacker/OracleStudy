package com.oracle.strutsdemo.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public abstract class BaseDAOImp implements  BaseDAO {
	private Connection con;  
	private Statement sta;
	private PreparedStatement  preSta;
	private CallableStatement  callSta;
	private DataSource  dataSource;//定义一个连接池对象，这个对象是用来缓存若干个连接的一个‘集合’
	public BaseDAOImp() {
		/**
		 * 这是在dao里面主动创建连接池的方法
		 */
		/*Properties  p=new Properties();
		p.load(new FileInputStream("datasource.properties"));
		dataSource=BasicDataSourceFactory.createDataSource(p);*/

		//Connection  c=source.getConnection();
		
		/**
		 * 用jndi访问服务，读取在猫里面创建好并发布成服务的那个链接池对象
		 */
		/*try {
			Context c = new InitialContext();
			dataSource=(DataSource)c.lookup("java:comp/env/jdbc/DRManager");
		} catch (NamingException e) {
			e.printStackTrace();
		}*/
		
		
	}
	public PreparedStatement getPreSta(String sql) {
		try {
			preSta=getCon().prepareStatement(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return preSta;
	}
	
	//这个方法目前没有使用
	public CallableStatement getCallSta(String sql) {
		try {
			callSta=getCon().prepareCall(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return callSta;
	}
	
	public Connection getCon() {
		try {
			Class.forName(dirverClass);
			con = DriverManager.getConnection(url, username, password);
			//con=dataSource.getConnection();
		}  catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}

	public Statement getSta() {
		try {
			sta = getCon().createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sta;
	}


	public void disposeResource(Statement sta, ResultSet rs) {// dispose释放，关闭资源
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (sta != null) {
			try {
				sta.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	/*public void disposeResource(Statement sta, Connection con) {// dispose释放，关闭资源		
		if (sta != null) {
			try {
				sta.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}*/
	/*public void disposeResource(Statement sta, ResultSet rs, Connection con) {// dispose释放，关闭资源
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (sta != null) {
			try {
				sta.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}*/
	/*public void disposeResource(PreparedStatement sta, ResultSet rs, Connection con) {// dispose释放，关闭资源
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (sta != null) {
			try {
				sta.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}*/
	/*public void disposeResource(PreparedStatement sta,Connection con) {// dispose释放，关闭资源
		if (sta != null) {
			try {
				sta.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}*/
	public void disposeResource(PreparedStatement sta,ResultSet rs) {// dispose释放，关闭资源
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (sta != null) {
			try {
				sta.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
