package com.yang.maven;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.shier.tiyan.business.project.service.ProInfoService;

public class TestProInfoService {
	@Test
	public void testProInfoService(){
		@SuppressWarnings("resource")
		ApplicationContext app = new ClassPathXmlApplicationContext(new String[]{"spring-context.xml","spring-mvc.xml","mybatis-config.xml"});
		ProInfoService pro = (ProInfoService)app.getBean("proInfoService");
		System.out.println(pro.findInfo());
	
	}
	
}

