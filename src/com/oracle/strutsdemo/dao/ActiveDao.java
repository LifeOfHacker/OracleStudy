package com.oracle.strutsdemo.dao;

import java.util.ArrayList;

import com.oracle.strutsdemo.model.bean.Active;

public interface ActiveDao extends BaseDAO {
/**
 * 查询所有的活动信息
 */
	public ArrayList<Active> getAllActiveInfo();
/**
 * 添加活动信息
 */
	public boolean AddActiveInfo(Active a);
/**
 * 删除活动信息
 */
	public boolean DeleteActiveInfo(int id);
/**
 * 修改商品信息
 */
	public ArrayList<Active> UpdateActiveInfo(int id);
}
