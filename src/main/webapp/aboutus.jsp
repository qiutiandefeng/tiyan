<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>关于我们</title>
  </head>
  <body>
  		我们是一家主要服务于中大型企业的创新型网站，欢迎您体验我们的产品，想了解更多的情况请加入我们的
            	QQ交流群:537163131；<br/>如果想购买我们的产品或服务请电话联系我:17718403529。
            	<br/>
            	
            	<!-- 请联系作者,并在网上签订交易合同!
            	警告：
            		我们的一切产品和服务的交易都是在网上进行,为了您的资金安全，请不要在线下进行交易!
            		 -->
            	我们的微信公众号: 
            	<img alt="微信公众号" src="<%=basePath %>static/images/wxgzh.png" style="width:200px;height: 200px;">
  </body>
</html>
