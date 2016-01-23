package com.shier.tiyan.business.project.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shier.tiyan.business.project.service.ProInfoService;
import com.shier.tiyan.common.web.BaseController;
/***
 * ProjectController 测试类
 * @author ygq 2016-01-16
 *
 */
@Controller
@RequestMapping("/pro")
public class ProjectController extends BaseController{
	//@Autowired
	private ProInfoService proInfoService;
	
	public ProInfoService getProInfoService() {
		return proInfoService;
	}
	@Autowired
	public void setProInfoService(ProInfoService proInfoService) {
		this.proInfoService = proInfoService;
	}
	@RequestMapping(value="/list")
	public String list(Model model){
		List<Map<String,Object>> list = proInfoService.findInfo();
		model.addAttribute("proList", list);
		return "proList";
	}
} 