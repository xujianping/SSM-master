<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--path和basePath必须建，以便模板页面的引入和资源访问正确--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="zh-CN">
<head>
    <title>404</title>
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/css/error.css">
    <link rel="stylesheet" href="${path}/css/font-awesome.css">
</head>
<body>
<div class="container">

    <div class="row text-center">

        <div class="col-md-12 set-pad">

            <strong class="error-txt">ERROR ! 404</strong>
            <p class="p-err">Lorem ipsum dolor sit amet posuere lectus et, fringilla augue.</p>
            <a href="index.html" class="btn btn-danger"><i class="fa fa-mail-reply"></i>&nbsp;PLEASE GO BACK</a>
        </div>


    </div>
</div>
<div class="c-err">
    <div class="container">
        <!--Search Section Start-->
        <div class="row ">
            <div class="form-group input-group col-md-6 col-md-offset-3">
                <input type="text" class="form-control" placeholder="Enter Keywords"/>
                <span class="input-group-btn">
                    <a class="btn btn-primary" href="index.html">
                        <i class="fa fa-gear fa-spin"></i>&nbsp;&nbsp;SEARCH HERE
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
            <br/>
            <br/>
            <a class="btn btn-success" href="index.html">
                PLEASE GO BACK TO WEBSITE ! NOTHING HERE
            </a>
            <br/>
            <br/>
        </div>

    </div>

</div>


<hr/>
<div class="container">
    <div class="row text-center">
        <div class="col-md-12">

            All Rights Reserved | &copy Yourdomain.com
        </div>

    </div>

</div>
</body>
</html>
