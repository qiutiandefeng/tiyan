package com.shier.tiyan.business;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 根URL
 * @author Sunw
 *
 */
@Controller
@RequestMapping
public class DefaultController {
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping
	public String index(Model model) {
		return "redirect:sys/login";//重定向到宜信官网
	}
}
