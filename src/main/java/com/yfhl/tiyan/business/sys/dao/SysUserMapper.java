package com.yfhl.tiyan.business.sys.dao;

import java.util.Map;

import com.yfhl.tiyan.business.sys.bean.SysUser;
import com.yfhl.tiyan.common.persistence.BaseMapper;

public interface SysUserMapper extends BaseMapper{
	  int deleteByPrimaryKey(Integer id);

	    int insert(SysUser record);

	    int insertSelective(SysUser record);

	    SysUser selectByPrimaryKey(Integer id);

	    int updateByPrimaryKeySelective(SysUser record);

	    int updateByPrimaryKey(SysUser record);
	    /**
	     * 
	     * 描述：根据用户名和密码查询用户
	     * 2013-1-16 下午02:26:22 by ygq
	     * @version
	     * @param map
	     * @return
	     */
	    SysUser selectByNameAndPassword(Map<String, String> map);
}