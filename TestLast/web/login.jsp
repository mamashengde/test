<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'login.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<div>
		<div>
			<span style="color: red">${message}</span>
		</div>
		<form action="<%=path %>/login.action" method="post" name="ThisForm">
			<table>
				<tr>
					<td>账 号：</td>
					<td><input class="username" name="username" type="text" /></td>
				</tr>
				<tr>
					<td>密 码：</td>
					<td><input class="password" name="password" type="password" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" class="login-btn" value="登录" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
