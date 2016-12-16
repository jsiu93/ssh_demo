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
</head>  
<style>  
#center{
position: absolute;
top: 50%;
-webkit-transform: translateY(-50%);
-moz-transform:  translateY(-50%);
-ms-transform:  translateY(-50%);
-o-transform:  translateY(-50%);
transform:  translateY(-50%);
}

</style>  
<body>  
  <div class="container">
	<div class="row clearfix">
		<div class="col-lg-4 col-lg-offset-4  col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2" id="center">
			<form class="form-horizontal" role="form" action="${pageContext.request.contextPath }/user/login" method="post">
				<div class="form-group">
					 <label for="username" class="col-sm-3 control-label">用户名</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="username" name="username" />
					</div>
				</div>
				<div class="form-group">
					 <label for="password" class="col-sm-3 control-label">密码</label>
					<div class="col-sm-9">
						<input type="password" class="form-control" id="password" name="password" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">Sign in</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>  

</html>  
