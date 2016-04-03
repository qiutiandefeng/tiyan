package com.yfhl.tiyan.business.sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yfhl.tiyan.business.sys.bean.SysUser;
import com.yfhl.tiyan.business.sys.dao.SysUserMapper;
import com.yfhl.tiyan.common.service.BaseService;

@Service
public class SysUserService  extends BaseService{
	@Autowired
	private SysUserMapper sysUserMapper;
	@Transactional(readOnly=false)
	public int save(SysUser sysUser){
		return sysUserMapper.insertSelective(sysUser);
	}
	
}
