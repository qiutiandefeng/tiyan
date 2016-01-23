<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>项目列表</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/plugins/bootstrap/examples/blog/blog.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

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
          <a class="blog-nav-item active" href="#">一元体验 </a>
          <a class="blog-nav-item" href="#">服务定制</a>
        </nav>
      </div>
    </div>
    <div class="container">
      <div class="blog-header">
        <h1 class="blog-title">项目列表</h1>
      </div>
      <div class="row">
        <div class="col-sm-8 blog-main">
          <div class="blog-post">
          	<table width="80%">
				<tr>
					<td>项目名称</td>
					<td>访问路径</td>
					<td>项目描述</td>
				</tr>
				<c:if test="${!empty proList }">
					<c:forEach items="${proList }" var="pro">
						<tr>
							<td>${pro.name }</td>
							<td><a href="${pro.url }">${pro.url}</a></td>
							<td>${pro.describe }</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
          </div><!-- /.blog-post -->
      <!--    <nav>
            <ul class="pager">
              <li><a href="#">Previous</a></li>
              <li><a href="#">Next</a></li>
            </ul>
          </nav>
		-->
        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
          <div class="sidebar-module sidebar-module-inset">
            <h4>如果你有好的想法，请加我QQ：626264481<br>或者给我发邮件: xiaoquan328@163.com  我们可以一起去探索!</h4>
           </div>
          <div class="sidebar-module">
            <h4>排行榜</h4>
            <ol class="list-unstyled">
              <li><a href="#">March 2014</a></li>
            </ol>
          </div>
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
      <p> @Copyright © 2009 lianjieniwo. All Rights Reserved.  版权所有 十二科技（北京）发展科技有限公司</p>
      <p>
        <a href="#">回到顶部</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>