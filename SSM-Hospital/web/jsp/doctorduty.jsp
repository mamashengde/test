<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 25925
  Date: 2023/1/3
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/rl.js"></script>
<script type="text/javascript">
  function deletes(id){
    window.location.href="myyszblist.html";
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
    <div class="pageTitle">医生值班列表</div>
    <div class="querybody">
      <ul class="seachform">
        <form class="form-inline" action="${pageContext.request.contextPath}/doctorduty/queryDoctorduty" method="post" style="float: left">
        <li><label>医生ID</label><input name="docid" type="text" class="scinput" /></li>
        <li><label>日期</label><input type="text" id="dutydate" name="dutydate" onClick="SelectDate(this.name)" class="scinput"/></li>
        <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>
        </form>
      </ul>
    </div>
    <div class="pageColumn">
      <div class="pageButton"><a href="../jsp/addDoctorduty.jsp"><img src="../images/t01.png" title="新增"/></a><span>医生值班列表</span></div>
      <table>
        <thead>
        <th width="">值班ID</th>
        <th width="">医生ID</th>
        <th width="">日期</th>
        <th width="10%">操作</th>
        </thead>
        <tbody>


        <c:forEach var="doctorduty" items="${list}">
          <tr>
            <td>${doctorduty.dutyid}</td>
            <td>${doctorduty.docid}</td>
            <td><fmt:formatDate value="${doctorduty.dutydate}" pattern="yyyy-MM-dd"/></td>
            <td>
<%--              <a onclick="deletes(id)"><img src="../images/icon/del.png" width="16" height="16" /></a>--%>
              <a href="${pageContext.request.contextPath}/doctorduty/deleteDoctorduty/${doctorduty.dutyid}">
                <img src="../images/icon/del.png" title="删除" width="16" height="16" /></a>
            </td>

          </tr>
        </c:forEach>

        </tbody>
<%--        <tbody>--%>
<%--        <tr>--%>
<%--          <td>111111</td>--%>
<%--          <td>2018-1-10</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--          <td>111111</td>--%>
<%--          <td>2018-1-20</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--          <td>111111</td>--%>
<%--          <td>2018-1-30</td>--%>
<%--        </tr>--%>
<%--        </tbody>--%>
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


