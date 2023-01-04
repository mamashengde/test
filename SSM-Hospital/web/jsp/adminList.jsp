<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${ctx}/css/select.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx}/js/select-ui.min.js"></script>
<script type="text/javascript">
	function deletes(id){
	 	window.location.href="html/adminlist.html";
	}
	function query(){
		window.location.href="queryUserList.action";
	}
</script>
</head>

<body>
<div id="contentWrap">
	<!--表格控件 -->
  <div id="widget table-widget">
    <div class="pageTitle">用户管理</div>
    <div class="querybody" >
    <form name="queryForm" action="${pageContext.request.contextPath}/user/queryUserssm.action" method="post">
	    <ul class="seachform" >
	    <li><label>用户ID</label><input id="id" name="id" type="text" value="${userssm.id}" class="scinput" /></li>
	    <li><label>用户名称</label><input id="username" name="username" type="text" value="${userssm.username}" class="scinput" /></li>
        <li><label>用户类型</label>
			<select id="role" name="role">
				<option value="">-请选择-</option>
				<option value="01">管理员</option>
				<option value="02">服务台员工</option>
				<option value="03">药剂师</option>
				<option value="04">医生</option>
				<option value="05">会员</option>
			</select>
	    </li>
	    <li><label>&nbsp;</label><input type="submit" class="scbtn" value="查询" /></li>
	    </ul>
	</form>
	</div>
    <div class="pageColumn">
      <div class="pageButton"><a href="${ctx}/jsp/adminadd.jsp"><img src="${ctx}/images/t01.png" title="新增"/></a><span>用户列表</span></div>
      <table>
        <thead>
	          <th width="">用户ID</th>
	          <th width="">用户名</th>
	          <th width="">姓名</th>
	          <th width="">用户类型</th>
	          <th width="">联系电话</th>
	          <th width="">年龄</th>
	          <th width="">家庭住址</th>
	          <th width="10%">操作</th>
        </thead>
        <tbody>
           <c:forEach items="${userList}" var="userssm">
				<tr>
					<td>${userssm.id}</td>
					<td>${userssm.username}</td>
					<td>${userssm.realname}</td>
					<td>${userssm.role eq 01 ? "管理员":userssm.role eq 02 ? "大堂服务员": userssm.role eq 03 ? "药剂师": userssm.role eq 04 ? "医生": userssm.role eq 05 ? "会员":"未知"}</td>
					<td>${userssm.tel}</td>
					<td>${userssm.age}</td>
					<td>${userssm.address}</td>
					<td><a href="${pageContext.request.contextPath}/user/toUpdateUser?id=${userssm.id}"><img src="${ctx}/images/icon/edit.png" width="16" height="16" /></a>
	         			<a href="${pageContext.request.contextPath}/user/deleteUser?id=${userssm.id}"><img src="${ctx}/images/icon/del.png" width="16" height="16" /></a></td>
				</tr>
			</c:forEach>
        </tbody>
      </table>
      <jsp:include page="common/includefoot.jsp">
		  <jsp:param name="url" value="/user/queryUserList.action" />
	  </jsp:include>
    </div>
  </div><!-- #widget -->
</div>
</body>
</html>
