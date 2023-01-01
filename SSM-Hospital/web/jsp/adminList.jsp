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
	 	window.location.href="adminlist.html";
	}
	function modify(id){
		window.location.href="adminadd.html";
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
    <form name="queryForm" action="${ctx}/user/queryUserList.action" method="post">
	    <ul class="seachform" >
	    <li><label>用户ID</label><input id="id" name="id" type="text" value="${userssm.id}" class="scinput" /></li>
	    <li><label>用户名称</label><input id="username" name="username" type="text" value="${userssm.username}" class="scinput" /></li>
        <li><label>用户类型</label>  
		    <select id="role" name="role" style="width:150px;height:32px;" >
				<c:forEach items="${roleList}" var="role" >
					<option value="${role.BM}" <c:if test="${userssm.role eq role.BM}">selected</c:if>>${role.MC}</option>
				</c:forEach>
			</select>
	    </li>
	    <li><label>&nbsp;</label><input type="submit" class="scbtn" value="查询" /></li>
	    </ul>
	</form>
	</div>
    <div class="pageColumn">
      <div class="pageButton"><a href="${ctx}/html/adminadd.html"><img src="${ctx}/images/t01.png" title="新增"/></a><span>用户列表</span></div>
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
           <c:forEach items="${userList}" var="user">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.realname}</td>
					<td>${user.role eq 01 ? "管理员":user.role eq 02 ? "大堂服务员": user.role eq 03 ? "药剂师": "未知"}</td>
					<td>${user.tel}</td>
					<td>${user.age}</td>
					<td>${user.address}</td>
					<td><a onclick="modify(id)"><img src="${ctx}/images/icon/edit.png" width="16" height="16" /></a>
	         			<a onclick="deletes(id)"><img src="${ctx}/images/icon/del.png" width="16" height="16" /></a></td>
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
