package com.yang.maven;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yfhl.tiyan.business.project.service.ProInfoService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-context.xml","classpath:spring-mvc.xml"})
public class TestSpringProInfoService {
	
	private ProInfoService proInfoService;
	
	public ProInfoService getProInfoService() {
		return proInfoService;
	}
	@Autowired
	public void setProInfoService(ProInfoService proInfoService) {
		this.proInfoService = proInfoService;
	}

	@Test
	public void testProInfoService(){
		System.out.println(proInfoService.findInfo(null));
	
	}
	
}

