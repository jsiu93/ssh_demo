<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>

<!-- Latest compiled and minified Locales -->
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="row clearfix">
					<div class="col-md-8 column">header</div>
					<div class="col-md-4 column"></div>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-3 column"></div>
			<div class="col-md-9 column">
				<table id="table"  >
				</table>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
$('#table').bootstrapTable({
    url: '${pageContext.request.contextPath }/user/list',
    pagination: true,//是否分页
    striped: true,
    search: true,
    showRefresh: true,//刷新按钮
    showColumns: true,//列选择按钮
    buttonsAlign: "left",//按钮对齐方式
    toolbar: "#toolbar",//指定工具栏
    toolbarAlign: "right",//工具栏对齐方式
    pageSize: 5,//单页记录数
    pageList: [5, 10, 20, 50],//分页步进值
    paginationVAlign:'bottom',
    sidePagination: "server",//服务端分页
    dataType: "json",//期待返回数据类型
    columns: [{
        field: 'id',
        title: 'id'
    }, {
        field: 'username',
        title: '用户名'
    }, {
        field: 'password',
        title: '密码'
    }, ]
});
</script>
</body>

</html>
