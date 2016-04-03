package com.yfhl.tiyan.business.indcenter.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yfhl.tiyan.common.web.BaseController;
/**
 * 个人中心
 * @author ygq 
 *
 */
@Controller
@RequestMapping("/ind")
public class IndCenterController extends BaseController{
	@RequestMapping(value="/center")
	public String listbk(Model model){
		return "indcenter/perCenter";
	}
} 