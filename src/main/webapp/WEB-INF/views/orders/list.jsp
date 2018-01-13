<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--path和basePath必须建，以便模板页面的引入和资源访问正确--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>订单列表</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <%--<link rel="stylesheet" href="/webjars/bootstrap/3.3.5/css/bootstrap-theme.min.css">--%>
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="/webjars/jquery/1.11.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="/webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- bootstrap-table -->
    <script type="text/javascript" src="${path}/dependents/bootstrap-table/1.9.1/bootstrap-table.js"></script>
    <script type="text/javascript" src="${path}/dependents/bootstrap-table/1.9.1/bootstrap-table-locale-all.js"></script>
    <link rel="stylesheet" type="text/css" href="${path}/dependents/bootstrap-table/1.9.1/bootstrap-table.css"/>
    <!-- layer -->
    <script type="text/javascript" src="${path}/dependents/layer/layer.js"></script>
    <!-- laydate -->
    <link rel="stylesheet" type="text/css" href="${path}/dependents/laydate/need/laydate.css"/>
    <script type="text/javascript" src="${path}/dependents/laydate/laydate.js"></script>

    <link rel="stylesheet" href="${path}/css/basic.css">
    <link rel="stylesheet" href="${path}/css/font-awesome.css">
</head>
<body>
<div id="wrapper">
    <%@include file="../common/header.jsp" %>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">

                    <div class="row-fluid">
                        <div class="span12">
                            <div class="control-group form-inline" style="border: 1px solid #ccc;padding: 10px; border-radius: 3px;">
                                <div class="input-group input-group-sm">
                                    <label for="name">用户名称</label>
                                    <input id="name" type="text">
                                </div>
                                <div class="input-group input-group-sm">
                                    <label for="sex">性别</label>
                                    <select id="sex">
                                        <option value="-1">全部</option>
                                        <option value="1">男</option>
                                        <option value="0">女</option>
                                    </select>
                                </div>
                                <button id="btn_search" type="button" class="btn btn-primary btn-sm">
                                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>查询
                                </button>
                                <button id="btn_clean_search" type="button" class="btn btn-danger btn-sm">清空条件</button>
                            </div>
                        </div>
                    </div>

                    <div id="toolbar" class="btn-group">
                        <!-- 工具栏 -->
                        <button id="btn_add" type="button" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
                        </button>
                        <button id="btn_delete" type="button" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除
                        </button>
                        <button id="btn_refresh" type="button" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>刷新
                        </button>
                        <button id="btn_clean" type="button" class="btn btn-default btn-sm">清空</button>
                        <button id="btn_init" type="button" class="btn btn-default btn-sm">初始化</button>
                        <button id="btn_toggleview" type="button" class="btn btn-default btn-sm">切换视图</button>
                        <button id="btn_togglepage" type="button" class="btn btn-default btn-sm">显隐分页</button>
                        <button id="btn_selectpage" type="button" class="btn btn-default btn-sm">跳转</button>
                    </div>

                    <!-- 表格 -->
                    <table id="users" class="table table-hover"></table>

                    <!-- 新增或修改弹框 -->
                    <div class="modal fade" id="addAndUpdate" tabindex="-1" role="dialog" aria-labelledby="addAndUpdateLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                            aria-hidden="true">×</span></button>
                                    <h4 class="modal-title" id="addAndUpdateLabel">新增用户信息</h4>
                                </div>
                                <div class="modal-body">
                                    <input type="hidden" name="txt_type" class="form-control" id="txt_type" placeholder="操作类型">
                                    <input type="hidden" name="txt_id" class="form-control" id="txt_id" placeholder="编号">
                                    <div class="form-group">
                                        <label for="txt_name">名称</label>
                                        <input type="text" name="txt_name" class="form-control" id="txt_name" placeholder="名称">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">性别</label>
                                        <div class="controls">
                                            <input id="p_man" type="radio" name="sex" value="1" checked/>
                                            <label for="p_man" style="margin-right: 30px;">男</label>
                                            <input id="p_woman" type="radio" name="sex" value="0"/>
                                            <label for="p_woman">女</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txt_pwd">密码</label>
                                        <input type="password" name="txt_pwd" class="form-control" id="txt_pwd" placeholder="密码">
                                    </div>
                                    <div class="form-group">
                                        <label for="txt_email">邮箱</label>
                                        <input type="text" name="txt_email" class="form-control" id="txt_email" placeholder="邮箱">
                                    </div>
                                    <div class="form-group">
                                        <label for="txt_phone">手机</label>
                                        <input type="text" name="txt_phone" class="form-control" id="txt_phone" placeholder="名称">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><span
                                            class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
                                    </button>
                                    <button type="button" id="btn_add_update_submit" class="btn btn-primary btn-sm"
                                            data-dismiss="modal"><span
                                            class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- /. WRAPPER  -->
    <%@include file="../common/footer.jsp" %>
</div>
<!-- METISMENU SCRIPTS -->
<script src="${path}/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="${path}/js/custom.js"></script>

<script type="text/javascript" src="${path}/js/laydate.js"></script>
<script type="text/javascript" src="${path}/js/table.js"></script>
<script type="text/javascript" src="${path}/js/table_crud.js"></script>

</body>
</html>
