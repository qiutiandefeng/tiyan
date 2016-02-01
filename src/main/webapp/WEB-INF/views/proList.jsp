<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <link rel="icon" href="${pageContext.request.contextPath}/plugins/bootstrap/favicon.ico">

    <title>爱体验</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.contextPath}/plugins/bootstrap/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/plugins/bootstrap/examples/blog/blog.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="${pageContext.request.contextPath}/plugins/bootstrap/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath}/plugins/bootstrap/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
           	 <!--  <a class="blog-nav-item " href="#">手机爱体验下载 </a>
           	  <img src="<%=basePath%>static/images/logo.png" style="width: 5%;height: 5%;"/> -->
	          <a class="blog-nav-item active" href="#">功能体验专区 </a>
	          <a class="blog-nav-item " href="#">产品体验专区 </a>
	          <a class="blog-nav-item" href="#">服务定制</a>
              <font color="#cdddeb">全站搜索 &nbsp;&nbsp;</font><input type="text" name="sousuo"/>
              &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
               &nbsp;&nbsp; &nbsp;&nbsp;
           <!-- <a class="blog-nav-item" href="#">社会现象研究</a> -->
              <a class="blog-nav-item" href="${pageContext.request.contextPath}/sys/login">登录</a>
              <a class="blog-nav-item" href="#">注册</a>
              <a class="blog-nav-item" href="#">个人中心</a>
              <a class="blog-nav-item" href="#">论坛</a>
              <a class="blog-nav-item" href="#">帮助</a>
        </nav>
      </div>
    </div>
    <div class="container">
      <div class="blog-header" style="margin-left: 80px;">
      </div>
      <div class="row">
        <div class="col-sm-8 blog-main">
          <div class="blog-post">
          	<table width="100%">
				<tr>
					<td width="20%">功能名称</td>
<!-- 					<td>功能描述</td> -->
					<td>视频展示</td>
					<td>用户手册</td>
					<td>访问量</td>
					<td>查看评价</td>
					<td>查看作者</td>
				</tr>
				<c:if test="${!empty proList }">
					<c:forEach items="${proList }" var="pro">
						<tr>
							<td><a href="${pro.url }" target="_blank">${pro.name}</a></td>
							<td>${pro.describe }</td>
							<td>${pro.describe }</td>
							<td>100</td>
							<td><a href="#">查看</a></td>
							<td><a href="#">张三</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
          </div>
        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
          <div class="sidebar-module sidebar-module-inset">
          		系统上线时间:30天<br/>
				我们是一家服务于中小企业的创新型网站，欢迎您体验我们的产品，想了解更多的情况，请加入
            	QQ交流群:537163131。如果想购买我们的产品或服务，请加我微信:626264481,或者电话联系我:17701057011
            	<!-- 请联系作者,并在网上签订交易合同!
            	警告：
            		我们的一切产品和服务的交易都是在网上进行,为了您的资金安全，请不要在线下进行交易!
            		 -->
            	<!-- 微信二维码: -->
            	<img alt="" src="">
            	<!-- 
            	欢迎来到爱体验,您想要的产品都在这里！
            	如果你想购买体验的产品，请加我QQ：626264481<br>或者电话联系我：18710213152</h4>
            	 -->
           </div>
           <!-- 
          <div class="sidebar-module">
            <h4>排行榜</h4>
            <ol class="list-unstyled">
              <li><a href="#">March 2014</a></li>
            </ol>
          </div> -->
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
      <p><a href="#">站点地图</a>|<a href="#">反馈有奖</a>|<a href="#">关于我们</a>|<a href="#">加入我们</a></p>
      <p> @Copyright © 2016 lianjieniwo. All Rights Reserved.  版权所有 爱体验团队</p>
      <p>
        <a href="#">回到顶部</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/plugins/bootstrap/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${pageContext.request.contextPath}/plugins/bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>