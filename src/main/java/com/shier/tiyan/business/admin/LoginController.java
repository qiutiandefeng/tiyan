package com.shier.tiyan.business.admin;

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
@RequestMapping("/sys")
public class LoginController extends BaseController{
	@RequestMapping(value="/login")
	public String list(Model model){
		return "admin/login";
	}
} 