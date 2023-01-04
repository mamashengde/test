<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 25925
  Date: 2023/1/3
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">

        function cz(id){
            window.location.href="membercz.html";
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
        <div class="pageTitle">费用结算</div>

        <div class="querybody">

            <ul class="seachform">
                <form class="form-inline" action="${pageContext.request.contextPath}/settle/querySettle" method="post" style="float: left">

                <li><label>会员ID</label><input name="memberid" type="text" class="scinput" /></li>
                <li><label>会员名称</label><input name="membername" type="text" class="scinput" /></li>
                <li><label>挂号号</label><input name="registno" type="text" class="scinput" /></li>
                <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>
                </form>
            </ul>

        </div>

        <div class="pageColumn">
            <div class="pageButton"><span>待结算列表</span></div>
            <table>
                <thead>
                <th width="">会员ID</th>
                <th width="">会员名称</th>
                <th width="">挂号号</th>
                <th width="">卡余额（元）</th>
                <th width="">待交费用（元）</th>
                <th width="10%">操作</th>
                </thead>
                <tbody>

<%--                </form>--%>
                <c:forEach var="settle" items="${list}">
                    <tr>
                        <td>${settle.memberid}</td>
                        <td>${settle.membername}</td>
                        <td>${settle.registno}</td>
                        <td>${settle.balance}</td>
                        <td>${settle.expensetopay}</td>
                        <td>
                            <a onclick="settle(id)"><img src="${pageContext.request.contextPath}/images/settle.jpg" width="16" height="16" title="结算"/></a>
                        </td>
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
