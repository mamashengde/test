<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
	$(function(){
		$('tbody tr:odd').addClass("trLight");
		
		$(".select-all").click(function(){
			if($(this).attr("checked")){
				$(".checkBox input[type=checkbox]").each(function(){
					$(this).attr("checked", true);  
					});
				}else{
					$(".checkBox input[type=checkbox]").each(function(){
					$(this).attr("checked", false);  
					});
				}
			});
		
		});
</script>
<style type="text/css">
body {
	background:#FFF
}
</style>
</head>

<body>
 <form method="post" action="${ctx}/updatePwd.action" method="post" name="ThisForm">
<div id="contentWrap">
  <div id="widget table-widget">
    <div class="pageTitle">修改密码<div align="right"><a href="javascript:history.back(-1)" >返回上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;</div></div>
    <div class="pageInfo">
		<table>
			<tr>
				<td width="20%" align="right"></td>
				<td width="20%"><span style="color: red">${message}</span></td>
			</tr>
			<tr>
				<td width="20%" align="right">原始密码</td>
				<td width="20%"><input type="text" id="password1" name="password1" /></td>
			</tr>
			<tr>
				<td width="20%" align="right">新密码</td>
				<td width="20%"><input type="password" id="password2" name="password2" /></td>
			</tr>
			<tr>
				<td width="20%" align="right">密码确认</td>
				<td width="20%"><input type="password" id="password3" name="password3" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="确认" /></td>
			</tr>
		</table>
	</div>
  </div>
  
</div>
</form>
</body>
</html>
