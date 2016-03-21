package com.yfhl.tiyan.business;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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
	private static final Log logger = LogFactory.getLog(DefaultController.class);
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping
	public String index(Model model) {
		return "redirect:http://www.itiyan.net/pro/list";//重定向
	}
}
