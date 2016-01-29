package com.shier.tiyan.business.project.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shier.tiyan.business.project.dao.ProInfoDao;
import com.shier.tiyan.common.service.BaseService;
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


	public List<Map<String,Object>> findInfo(){
		return proInfoDao.queryProInfo();
	}
}
