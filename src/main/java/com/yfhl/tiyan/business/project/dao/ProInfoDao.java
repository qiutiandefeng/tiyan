package com.yfhl.tiyan.business.project.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yfhl.tiyan.common.persistence.BaseDao;
import com.yfhl.tiyan.common.persistence.annonation.MyBatisDao;
//@MyBatisDao
public interface ProInfoDao extends BaseDao {
	/***
	 * 根据参数查询项目信息
	 * @author ygq
	 * data 2016-3-19 time 下午10:27:06
	 * @param itemId
	 * @return
	 */
	List<Map<String,Object>> queryProInfoByParams(Map<String,Object> map);
}
