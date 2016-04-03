package com.yfhl.tiyan.business.sys.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yfhl.tiyan.common.web.BaseController;
/***
 *  登录功能
 * @author ygq
 * @data 2016年4月3日 上午10:51:58
 */
@Controller
@RequestMapping("/login")
public class LoginController extends BaseController{
	@RequestMapping(value="/toLogin")
	public String toLogin(){
		return "sys/login";
	}
	@RequestMapping
	public String login(){
		System.out.println("登录成功");
		return "redirect:/pro/list";
	}
	/**
 	 * 
 	 * 描述：退出系统
 	 * 2013-1-16 下午06:12:31 by ygq
 	 * @version
 	 * @return
 	 * @throws Exception
 	 */
 	 @RequestMapping("exitLogin")
 	public String exitLogin() throws Exception{
 		request.getSession().invalidate();
 		return "sys/login";
 	}
} 