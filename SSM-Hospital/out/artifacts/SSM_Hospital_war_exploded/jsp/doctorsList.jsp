<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>无标题文档</title>
  <link href="../css/style.css" rel="stylesheet" type="text/css" />
  <link href="../css/select.css" rel="stylesheet" type="text/css" />
  <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/select-ui.min.js"></script>
  <script type="text/javascript">
    function deletes(id){
      window.location.href="yslist.html";
    }
    function modify(id){
      window.location.href="ysadd.html";
    }
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
<div id="contentWrap">
  <!--表格控件 -->
  <div id="widget table-widget">
    <div class="pageTitle">医生管理</div>
    <div class="querybody">
      <form name="queryForm" action="${pageContext.request.contextPath}/doctors/queryDoctor.action" method="post">
      <ul class="seachform">
        <li><label>医生ID</label><input id="docid" name="docid" type="text" class="scinput" /></li>
        <li><label>医生名称</label><input id="name" name="name" type="text" class="scinput" /></li>
        <li><label>科室</label>
          <select id="departid" name="departid" style="width:150px;height:32px;">
            <option value="">请选择</option>
            <option value="1">外科</option>
            <option value="2">内科</option>
            <option value="3">神经科</option>
            <option value="4">心脏科</option>
          </select>
        </li>
        <li><label>&nbsp;</label><input type="submit" class="scbtn" value="查询"/></li>
      </ul>
      </form>
    </div>
    <div class="pageColumn">
      <div class="pageButton"><a href="${ctx}/jsp/doctorsAdd.jsp"><img src="../images/t01.png" title="新增"/></a><span>医生列表</span></div>
      <table>
        <thead>
        <th width="">医生ID</th>
        <th width="">医生名</th>
        <th width="">密码</th>
        <th width="">真实姓名</th>
        <th width="">所属科室</th>
        <th width="">职称</th>
        <th width="">联系电话</th>
        <th width="">年龄</th>
        <th width="">性别</th>
        <th width="">家庭住址</th>
        <th width="10%">操作</th>
        </thead>
        <tbody>
        <c:forEach items="${doctorsList}" var="doctors">
          <tr>
            <td>${doctors.docid}</td>
            <td>${doctors.name}</td>
            <td>${doctors.password}</td>
            <%--<td>${doctors.role eq 01 ? "管理员":userssm.role eq 02 ? "大堂服务员":
            userssm.role eq 03 ? "药剂师": userssm.role eq 04 ? "医生": userssm.role eq 05 ? "会员":"未知"}</td>--%>
            <td>${doctors.realname}</td>
            <td>${doctors.departid eq 1 ? "外科":doctors.departid eq 2 ? "内科": doctors.departid eq 3 ? "神经科": doctors.departid eq 4 ? "心脏科":"未知"}</td>
            <td>${doctors.positional eq 1 ? "技师":doctors.positional eq 2 ? "主任医师": doctors.positional eq 3 ? "专家": "未知"}</td>
            <td>${doctors.tel}</td>
            <td>${doctors.age}</td>
            <td>${doctors.sex}</td>
            <td>${doctors.address}</td>
            <td><a href="${pageContext.request.contextPath}/doctors/toUpdateDoctors?docid=${doctors.docid}"><img src="${ctx}/images/icon/edit.png" width="16" height="16" /></a>
              <a href="${pageContext.request.contextPath}/doctors/deleteDoctors?docid=${doctors.docid}"><img src="${ctx}/images/icon/del.png" width="16" height="16" /></a></td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </div><!-- #widget -->
  <div id="pagination" style="align:right;margin-top:-10px;">
    <div id='project_pagination' class="pagination pagination-centered">
      <div class="pagination">
        <ul>
          <li class="disabled"><a href="#">«</a></li>
          <li class="active"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">»</a></li>
        </ul>
        <ul>
          <li><span>(1-10/38)</span></li>
          <li><span>显示条数&nbsp;:&nbsp;</span></li>
        </ul>
        <ul>
          <li class="active"><a href="#">10</a></li>
          <li class=""><a href="#">30</a></li>
          <li class=""><a href="#">50</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
</body>
</html>
