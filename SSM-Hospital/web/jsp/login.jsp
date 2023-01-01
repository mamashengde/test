<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>社区医疗管理系统</title>
<link href="<%=path %>/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('.captcha').focus(function(){
			$('.yzm-box').show();
			});
			
		$('.captcha').focusout(function(){
			$('.yzm-box').hide();
			});
		});
</script>
</head>
<body>
<div id="message-box"> 用户名或密码错误！ </div>
<div id="wrap">
	<div id="header"> </div>
    <div id="content-wrap">
    	<div class="space"> </div>
   	  <form action="<%=path %>/login.action" method="post" name="ThisForm">
	   	  <div class="content">
	   	 	
	        <div class="field"><label>账　号：</label><input class="username" name="username"  type="text" /></div>
			<div class="field"><label>密　码：</label><input class="password" name="password"  type="password" /><br /></div>
	        <div class="field"><span style="color: red">${message}</span></div>
<!-- 	        <div class="yzm-box"> -->
	        						<!-- <label>验证码：</label>
										<img src="image.do" id="yzmimage" align="middle"
											onclick="this.src=this.src+'?'" /><label
											style="color: red" id="yzmerror"></label> -->
<!-- 	        </div> -->
	        </div>
         <div class="btn"><input type="submit" class="login-btn" value="" /></div>
      </form>
    </div>
    <div id="footer"> </div>
</div>
</body>
</html>