<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/pages/include/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>爱体验-个人中心${videoUrl}</title>
  </head>
  <body>
<!--   		抽奖功能视频介绍:<a href="javascipt:void(0);" onclick="window.history.go(-1);">返回</a> -->
  		<br/>
		<video src="${ctx }/${param.videoUrl}" controls="controls">
			your browser does not support the video tag
		</video>
  </body>
</html>