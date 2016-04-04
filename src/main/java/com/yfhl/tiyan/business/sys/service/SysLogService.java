package com.yfhl.tiyan.business.sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yfhl.tiyan.business.sys.bean.SysLog;
import com.yfhl.tiyan.business.sys.dao.SysLogMapper;
import com.yfhl.tiyan.common.service.BaseService;
@Service
public class SysLogService extends BaseService {
	@Autowired
	private SysLogMapper sysLogMapper;
	@Transactional
	public void insert(SysLog sysLog){
		sysLogMapper.insert(sysLog);
	}
}
