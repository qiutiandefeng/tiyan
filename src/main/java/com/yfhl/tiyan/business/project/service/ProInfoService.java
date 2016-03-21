package com.yfhl.tiyan.business.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yfhl.tiyan.business.project.dao.ProInfoDao;
import com.yfhl.tiyan.common.service.BaseService;
@Service
public class ProInfoService extends BaseService{
	
	private ProInfoDao proInfoDao;	
	
	public ProInfoDao getProInfoDao() {
		return proInfoDao;
	}

	@Autowired
	public void setProInfoDao(ProInfoDao proInfoDao) {
		this.proInfoDao = proInfoDao;
	}

	public List<Map<String,Object>> findInfo(Integer itemId){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("itemId", itemId);
		return proInfoDao.queryProInfoByParams(map);
	}
}
