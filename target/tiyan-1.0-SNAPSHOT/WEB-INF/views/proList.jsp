<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">
    <title>爱体验</title>
    <!-- Bootstrap core CSS -->
     <link href="${ctx}/plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${ctx}/plugins/bootstrap/examples/justified-nav/justified-nav.css" rel="stylesheet">
    <link href="${ctx}/plugins/bootstrap/examples/blog/blog.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="${ctx}/plugins/jquery.js"></script>
    <script type="text/javascript">
    	function fun_show(obj,nav){
    		if(nav == 'nav1'){
    			$("#nav1").show();
    			$("#nav2").hide();
    		}else if(nav == 'nav2'){
    			$("#nav1").hide();
    			$("#nav2").show();
    		}
	       $("li").removeClass("active");
	       $(obj).parent().addClass('active');
    	}
    </script>
  </head>
  <body>
    <div class="container">
      <div class="masthead">
        <h3 class="text-muted">爱体验</h3>
        <ul class="nav nav-justified">
          <li id="lg"  class="active"><a href="javascript:void(0);" onclick="fun_show(this,'nav1')">功能体验专区</a></li>
          <li id="lc"><a href="javascript:void(0);" onclick="fun_show(this,'nav2')">产品体验专区</a></li>
<!--           <li><a href="http://tieba.baidu.com/p/4366911220" target="_blank")>贴吧</a></li> -->
<%--           <li><a href="${ctx}/aboutus.jsp" target="_blank">关于我们</a></li> --%>
<!--           <li><a href="javascript:void(0);" onclick="fun_show(this);">加入我们</a></li> -->
          <li><a href="https://shop108216587.taobao.com" target="_blank">看累了，来个苹果吧</a></li>
<!--            <li><a href="javascript:void(0);" onclick="fun_show(this);">我要吐槽</a></li> -->
        </ul>
      </div>
      <div class="row" id="nav1">
        	<c:if test="${!empty funList }">
					<c:forEach items="${funList }" var="pro" varStatus="status">
						  <div class="col-lg-3">
					          <h2>${status.index +1}.${pro.name}</h2>
					          <p class="text-danger">
					          	<img alt="" src="${ctx}/resource/images/${pro.imageurl}">
					          </p>
					          <p>	
					             <a class="btn btn-primary" href="${pro.url }" role="button" target="_blank">在线试用 &raquo;</a>
				          		 <c:choose>
									<c:when test="${empty pro.videoUrl }"></c:when>
									<c:otherwise>
										<a class="btn btn-primary" href="${ctx }/pro/showVideo?videoUrl=${pro.videoUrl}" target="_blank">查看视频</a></td>
									</c:otherwise>	
								 </c:choose>
					          </p>
				        </div>
<%-- 				        <c:if test="${status.index == 2 }"> --%>
<!-- 					        <div class="col-lg-3"> -->
<!-- 					        	我们是一家主要服务于中大型企业的创新型网站，欢迎您体验我们的产品，想了解更多的情况请加入我们的 -->
<!-- 				            	QQ交流群:537163131；<br/>如果想购买我们的产品或服务请电话联系我:17718403529。 -->
<!-- 				            	<br/> -->
<%-- 				            	<img alt="微信公众号" src="<%=basePath %>static/images/wxgzh.png" style="width:200px;height: 200px;"> --%>
<!-- 								</div> -->
<%-- 						</c:if> --%>
						</c:forEach>
					</c:if>
      </div>
      <!-- 产品体验-->
      <div class="row" id="nav2" style="display:none;">
       		<c:if test="${!empty proList }">
				<c:forEach items="${proList }" var="pro" varStatus="status">
					  <div class="col-lg-4">
			          <h2>${status.index +1}.${pro.name}</h2>
			          <p class="text-danger">
			          	<img alt="" src="${ctx}/resource/images/${pro.imageurl}">
			          </p>
			          <p>	
			             <a class="btn btn-primary" href="${pro.url }" role="button" target="_blank">在线试用 &raquo;</a>
		          		 <c:choose>
							<c:when test="${empty pro.videoUrl }"></c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="${ctx }/pro/showVideo?videoUrl=${pro.videoUrl}" target="_blank">查看视频</a></td>
							</c:otherwise>	
						 </c:choose>
			          </p>
			        </div>
				</c:forEach>
			</c:if>
      </div>
      <!-- Site footer -->
      <div class="footer">
      		关注我们:<img alt="微信公众号" src="<%=basePath %>resource/images/wxgzh.png">
        	&copy;  北京云帆互联科技发展有限公司  2015-2016 All Rights Reserved.网站备案:京ICP备16006346号|
        	联系我们:18710213152
        </p>
      </div>
    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<!--      <footer class="blog-footer"> -->
<!--       <p> -->
<!--            @Copyright © 云帆互联科技发展北京有限公司  2015-2016 All Rights Reserved.网站备案:京ICP备16006346号</p> -->
<!--       <p> -->
<!--         <a href="#">回到顶部</a> -->
<!--       </p> -->
<!--     </footer> -->
  </body>
</html>
