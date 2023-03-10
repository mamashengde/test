<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript">

        function deletes(id){
            window.location.href="yplist.html";
        }

        function modify(id){
            window.location.href="ypadd.html";
        }

        function cz(id){
            window.location.href="ypcz.html";
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
        <div class="pageTitle">药品管理</div>
        <form name="queryForm" action="${pageContext.request.contextPath}/drugs/queryDrugs.action" method="post">
            <ul class="seachform">
                <li><label>药品ID</label><input id="drugs" name="drugsid" type="text" class="scinput" /></li>
                <li><label>药品名称</label><input id="name" name="name" type="text" class="scinput" /></li>
                <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>
            </ul>
        </form>
        <div class="pageColumn">
            <div class="pageButton"><a href="${ctx}/jsp/drugsAdd.jsp"><img src="../images/t01.png" title="新增"/></a><span>药品列表</span></div>
            <table>
                <thead>
                <th width="">药品ID</th>
                <th width="">药品名称</th>
                <th width="">进价</th>
                <th width="">售价</th>
                <th width="">库存数量</th>
                <th width="">引入日期</th>
                <th width="">生产厂商</th>
                <th width="">生产日期</th>
                <th width="">保质期</th>
                <th width="">供货单位</th>
                <th width="10%">操作</th>
                <th width="10%">库存新增</th>
                </thead>
                <tbody>
                <c:forEach items="${DrugsList}" var="drugs">
                    <tr>
                        <td>${drugs.drugsid}</td>
                        <td>${drugs.name}</td>
                        <td>${drugs.purchaseprice}</td>
                        <td>${drugs.price}</td>
                        <td>${drugs.num}</td>
                        <td><fmt:formatDate value="${drugs.introducedate}" pattern="yyyy-MM-dd"></fmt:formatDate> </td>
                        <td>${drugs.productunit}</td>
                        <td><fmt:formatDate value="${drugs.productdate}" pattern="yyyy-MM-dd"></fmt:formatDate> </td>
                        <td><fmt:formatDate value="${drugs.qualityperiod}" pattern="yyyy-MM-dd"></fmt:formatDate> </td>
                        <td>${drugs.supplyunit}</td>
                        <td><a href="${pageContext.request.contextPath}/drugs/toUpdateDrugs?id=${drugs.drugsid}"><img src="${ctx}/images/icon/edit.png" width="16" height="16" /></a>
                            <a href="${pageContext.request.contextPath}/drugs/deleteDrugs?id=${drugs.drugsid}"><img src="${ctx}/images/icon/del.png" width="16" height="16" /></a>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/drugs/tonumaddDrugspage?id=${drugs.drugsid}"><img src="${ctx}/images/icon/edit2.png" width="16" height="16" /></a>
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
                    <li><span>显示条数&nbsp;:&nbsp;5</span></li>
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

