<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE meta PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="<%=basePath%>">
</head>
<form action="fileope/upload" method="post" enctype="multipart/form-data">
   file1:<input type="file" name="myFile"/>
   <br>
   file2:<input type="file" name="myFile"/>
   <br>
   <input type="submit" value="上传">
</form> 
</html>
