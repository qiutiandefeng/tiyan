package com.yfhl.tiyan.business.sys.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.yfhl.tiyan.business.sys.bean.SysUser;
import com.yfhl.tiyan.business.sys.service.SysUserService;
import com.yfhl.tiyan.common.web.BaseController;
/***
 *  登录功能
 * @author ygq
 * @data 2016年4月3日 上午10:51:58
 */
@Controller
@RequestMapping("/login")
public class LoginController extends BaseController{
	@Resource(name="sysUserService")
	private SysUserService sysUserService;
	
	@RequestMapping(value="/toLogin")
	public String toLogin(){
		return "sys/login";
	}
	@RequestMapping
	public String login(HttpServletRequest request,ModelMap model) throws Exception{
		String username = request.getParameter("username");
	 	String password = request.getParameter("password");
	 	SysUser user = sysUserService.findOneUser(username, password);
		if(user == null){
			model.addAttribute("msg", "<font color='red'>请检查用户名和密码是否输入正确!</font>");
			return "sys/login";
		}else{
		    HttpSession session =  request.getSession();
	        session.setAttribute("user", user);
		}
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