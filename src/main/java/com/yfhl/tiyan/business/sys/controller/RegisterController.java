package com.yfhl.tiyan.business.sys.controller;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yfhl.tiyan.business.project.controller.ProjectController;
import com.yfhl.tiyan.business.sys.bean.SysUser;
import com.yfhl.tiyan.business.sys.service.SysUserService;
import com.yfhl.tiyan.common.web.BaseController;
/***
 *  注册功能
 * @author ygq
 * @data 2016年4月3日 上午10:51:58
 */
@Controller
@RequestMapping("/reg")
public class RegisterController extends BaseController{
	private Log logger = LogFactory.getLog(ProjectController.class);

	@Autowired
	private SysUserService sysUserService;
	
	@RequestMapping(value="/toreg")
	public String toreg(){ 
		return "sys/register";
	}
	@RequestMapping(value="/register")
	public String register(@ModelAttribute SysUser sysUser){
		int result = sysUserService.save(sysUser);
		System.out.println("RegisterController.register()::::::" + result);
		logger.info("result::::::" + result);
		return "redirect:/login/toLogin";
	}
} 