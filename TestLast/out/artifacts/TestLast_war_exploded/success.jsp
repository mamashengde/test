<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
    success！下载：<br/>
	<c:forEach var="fileName" items="${fileNames}">
	 <a href="fileope/download?fileName=${fileName}">${fileName}</a></br>
	</c:forEach>
</body>
</html> --%>


<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'success.jsp' starting page</title>
  </head>
  <body>
    This is my success page. <br>
    id:${user.id}<br>
    usersname:${user.username}<br>
    password:${user.password}<br>
  </body>
</html>
