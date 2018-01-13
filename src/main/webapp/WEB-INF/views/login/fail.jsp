<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--path和basePath必须建，以便模板页面的引入和资源访问正确--%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="zh-CN">
<head>
	<title>登陆失败</title>
	<link rel="stylesheet" href="/webjars/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="${path}/css/error.css">
	<link rel="stylesheet" href="${path}/css/font-awesome.css">
</head>
<body>
<div class="container">

	<div class="row text-center">

		<div class="col-md-12 set-pad">

			<strong class="error-txt">登陆失败了！</strong>
			<p class="p-err">可能是账号或者密码错误了.</p>
			<a href="#" class="btn btn-danger"><i class="fa fa-mail-reply"></i>&nbsp;PLEASE GO BACK</a>
		</div>
	</div>
</div>
<div class="c-err">
	<div class="container">
		<!--Search Section Start-->
		<div class="row ">
			<div class="form-group input-group col-md-6 col-md-offset-3">
				<input type="text" class="form-control" placeholder="关键字"/>
				<span class="input-group-btn">
                    <a class="btn btn-primary" href="#">
                        <i class="fa fa-gear fa-spin"></i>&nbsp;&nbsp;点击查询
                    </a>
                </span>
			</div>
			<br/>

		</div>
		<!--Search Section end-->

	</div>
</div>

<div class="container">
	<div class="row text-center">
		<div class="col-md-12">

			All Rights Reserved | &copy 304793680@qq.com
		</div>

	</div>

</div>
</body>
</html>
