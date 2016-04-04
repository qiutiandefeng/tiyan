package com.yfhl.tiyan.business.sys.service;
import java.util.HashMap;
import java.util.Map;
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
	@Transactional
	public int save(SysUser sysUser){
		return sysUserMapper.insertSelective(sysUser);
	}
	
	public SysUser findOneUser(String username, String password) throws Exception {
		SysUser user = null;
		try{
			Map<String,String> map = new HashMap<String,String>();
			map.put("username", username);
			map.put("password", password);
			user = sysUserMapper.selectByNameAndPassword(map);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return user;
	}
	
}
