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
    <link rel="icon" href="${ctx}/plugins/bootstrap/favicon.ico">

    <title>注册</title>
    <!-- Bootstrap core CSS -->
    <link href="${ctx}/plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${ctx}/plugins/bootstrap/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${ctx}/plugins/bootstrap/examples/signin/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="${ctx}/plugins/bootstrap/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${ctx}/plugins/bootstrap/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <form class="form-signin" action="${ctx }/reg/register">
        <label for="loginName" class="sr-only">用户名</label>
        <input type="text" id="loginName" name="loginName" class="form-control" placeholder="用户名" required autofocus>
        <label for="password" class="sr-only">密码</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="密码" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
      </form>
    </div> <!-- /container -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${ctx}/plugins/bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
