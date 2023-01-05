<%--
  Created by IntelliJ IDEA.
  User: Yfnic
  Date: 2023/1/5
  Time: 1:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/jsp/common/includehead.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('tbody tr:odd').addClass("trLight");

            $(".select-all").click(function () {
                if ($(this).attr("checked")) {
                    $(".checkBox input[type=checkbox]").each(function () {
                        $(this).attr("checked", true);
                    });
                } else {
                    $(".checkBox input[type=checkbox]").each(function () {
                        $(this).attr("checked", false);
                    });
                }
            });
        });
    </script>
    <style type="text/css">
        body {
            background: #FFF
        }
    </style>
</head>

<body>
<form method="post" action="${pageContext.request.contextPath}/members/membersBalanceAdd" method="post" name="ThisForm">
    <input type="hidden" name="memberid" value="${QMembers.memberid}"/>
    <div id="contentWrap">
        <!--表格控件 -->
        <div id="widget table-widget">
            <div class="pageTitle">会员余额充值</div>
            <div class="pageColumn">
                <div class="pageInfo">
                    <table>
                        <input type="hidden" name="balance"} value="${QMembers.balance}">
                        <tr>
                            <td>剩余金额为: ${QMembers.balance}</td>
                        </tr>
                        <tr>
                            <td width="">充值金额</td>
                            <td width=""><input type="text" name="addBalance" class="form-control" required/>
                            </td>
                            <td><input type="submit" value="确定"/></td>
                        </tr>
                    </table>
                </div>
            </div><!-- #widget -->
        </div>
    </div>
</form>
</body>
</html>


