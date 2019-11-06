<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>	
<title>Insert title here</title>
</head>
<body>
	<form action="#" method="post">
		<p>用户名：<input type="text" name="username" id="username"></p>
		<p>密码：<input type="text" name="password" id="password"></p>
		<input type="submit" value="登陆" onclick="login()">
		<p>如果没有账号，请<a href="zc.jsp">注册</a></p>
	</form>
	<script type="text/javascript">
		function login() {
			alert(3);
			var check = true;
			
			var username =$("#username").val().trim();
			var password =$("#password").val().trim();
			
			if (username=="") {
				alert("用户名不能为空")
				check=false;
			}else if (password="") {
				alert("密码不能为空");
				check=false;
			}
			if (check) {
				$.post("login",$("form").serialize(),function(res){
					alert(res);
					if (res) {
						alert("登陆成功！");
						location.href="qqq.jsp";
					}
				});
			}
		}
	
	</script>
</body>
</html>