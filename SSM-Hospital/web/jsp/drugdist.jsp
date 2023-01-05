<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/rl.js"></script>
    <script type="text/javascript">
        function ypff(id){
            window.location.href="ypff.html";
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
        <div class="pageTitle">药品发放</div>
        <div class="querybody">
            <ul class="seachform">
                <form class="form-inline" action="${pageContext.request.contextPath}/drugdist/queryDrugdist" method="post" style="float: left">
                <li><label>挂号号</label><input name="registno" type="text" class="scinput" /></li>
                <li><label>会员ID</label><input name="memberid" type="text" class="scinput" /></li>
                <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>
                </form>
            </ul>
        </div>
        <div class="pageColumn">
            <div class="pageButton"><span>待发放药品列表</span></div>
            <table>
                <thead>
                <th width="">挂号号</th>
                <th width="">会员ID</th>
                <th width="">诊断人</th>
                <th width="">诊断时间</th>
                <th width="10%">药品名称</th>
                </thead>
                <tbody>

                <c:forEach var="drugdist" items="${list}">
                    <tr>
                        <td>${drugdist.registno}</td>
                        <td>${drugdist.memberid}</td>
                        <td>${drugdist.diagpeople}</td>
                            <%--            <td>${doctorduty.dutydate}</td>--%>
                        <td><fmt:formatDate value="${drugdist.diagdate}" pattern="yyyy-MM-dd"/></td>
                        <td>${drugdist.drugname}</td>

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

