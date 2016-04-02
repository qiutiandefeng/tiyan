package com.yfhl.tiyan.business.project.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yfhl.tiyan.business.project.service.ProInfoService;
import com.yfhl.tiyan.common.web.BaseController;
/***
 * ProjectController 测试类
 * @author ygq 2016-01-16
 *
 */
@Controller
@RequestMapping("/pro")
public class ProjectController extends BaseController{

	private Log logger = LogFactory.getLog(ProjectController.class);

	private ProInfoService proInfoService;
	
	public ProInfoService getProInfoService() {
		return proInfoService;
	}
	@Autowired
	public void setProInfoService(ProInfoService proInfoService) {
		this.proInfoService = proInfoService;
	}
	@RequestMapping(value="/list_mobile")
	public String list_mobile(Model model){
		List<Map<String,Object>> list = proInfoService.findInfo(null);
		model.addAttribute("proList", list);
		return "proList_mobile";
	}
	@RequestMapping(value="/list")
	public String listfunction(Model model){
		List<Map<String,Object>> funList = proInfoService.findInfo(1);//功能列表
		model.addAttribute("funList", funList);
		
		List<Map<String,Object>> proList = proInfoService.findInfo(2);//产品列表
		model.addAttribute("proList", proList);
		
		List<Map<String,Object>> toolList = proInfoService.findInfo(3);//工具包
		model.addAttribute("toolList", toolList);
		return "proList";
	}
	
//	@RequestMapping(value="/listproduct")
//	public String listproduct(Model model){
//		List<Map<String,Object>> list = proInfoService.findInfo(2);
//		model.addAttribute("proList", list);
//		return "proList";
//	}
//	@RequestMapping(value="/listbk")
//	public String listbk(Model model){
//		List<Map<String,Object>> list = proInfoService.findInfo();
//		model.addAttribute("proList", list);
//		return "proListbk";
//	}
	/***
	 * 跳转到显示视频的页面
	 * @return
	 */
	@RequestMapping(value="showVideo")
	public String showVideo(@RequestParam(value = "videoUrl") String videoUrl){
//		System.out.println("videoUrl::::::::" + videoUrl);
		return "video";
	}
} 