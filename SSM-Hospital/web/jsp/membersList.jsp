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
            window.location.href="memberlist.html";
        }

        function modify(id){
            window.location.href="memberadd.html";
        }

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
        <div class="pageTitle">会员管理</div>
        <div class="querybody">
            <ul class="seachform">
                <li><label>会员ID</label><input name="" type="text" class="scinput" /></li>
                <li><label>会员名称</label><input name="" type="text" class="scinput" /></li>
                <li><label>身份证</label><input name="" type="text" class="scinput" /></li>
                <li><label>电话</label><input name="" type="text" class="scinput" /></li>
                <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>
            </ul>
        </div>
        <div class="pageColumn">
            <div class="pageButton"><a href="${ctx}/jsp/membersAdd.jsp"><img src="../images/t01.png" title="新增"/></a><span>会员列表</span></div>
            <table>
                <thead>
                <th width="">会员ID</th>
                <th width="">用户名</th>
                <th width="">密码</th>
                <th width="">会员名称</th>
                <th width="">身份证</th>
                <th width="">电话</th>
                <th width="">卡余额</th>
                <th width="">年龄</th>
                <th width="">性别</th>
                <th width="">过敏史</th>
                <th width="">添加日期</th>
                <th width="10%">操作</th>
                <th width="10%">会员充值</th>
                </thead>
                <tbody>
                <c:forEach items="${membersList}" var="members">
                    <tr>
                        <td>${members.memberid}</td>
                        <td>${members.name}</td>
                        <td>${members.password}</td>
                        <td>${members.realname}</td>
                        <td>${members.credit}</td>
                        <td>${members.tel}</td>
                        <td>${members.balance}</td>
                        <td>${members.age}</td>
                        <td>${members.sex}</td>
                        <td>${members.anaphylaxis}</td>
                        <td><fmt:formatDate value="${members.createdate}" pattern="yyyy-MM-dd"></fmt:formatDate> </td>
                        <td><a href="${pageContext.request.contextPath}/members/toUpdateMembers?memberid=${members.memberid}"><img src="${ctx}/images/icon/edit.png" width="16" height="16" /></a>
                            <a href="${pageContext.request.contextPath}/members/deleteMembers?memberid=${members.memberid}"><img src="${ctx}/images/icon/del.png" width="16" height="16" /></a>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/members/toMembersBalanceAdd?memberid=${members.memberid}"><img src="${ctx}/images/icon/edit2.png" width="16" height="16" /></a>
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
