package com.yfhl.tiyan.business.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yfhl.tiyan.business.project.service.ProInfoService;
import com.yfhl.tiyan.common.web.BaseController;
/***
 * hello world 测试类
 * @author ygq 2016-01-16
 *
 */
@Controller
@RequestMapping
public class HelloWorld extends BaseController{
	//@Autowired
	private ProInfoService proInfoService;
	
	public ProInfoService getProInfoService() {
		return proInfoService;
	}
	@Autowired
	public void setProInfoService(ProInfoService proInfoService) {
		this.proInfoService = proInfoService;
	}
	@RequestMapping(value="/sayHi")
	public String sayHi(){
//		List<Map<String,Object>> list = proInfoService.findInfo();
//		System.out.println("very good ao" + list);
		//System.out.println("very good");
		return "hello";
	}
	public static void main(String[] args){
		System.out.print(new HelloWorld().sayHi());
	}
} 