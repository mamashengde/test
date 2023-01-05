<%--
  Created by IntelliJ IDEA.
  User: 31584
  Date: 2023/1/4
  Time: 0:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<html>
<head>
    <title>修改会员信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
</head>
<body>
<form action="${pageContext.request.contextPath}/members/updateMembers" method="post">
    <div id="contentWrap">
        <!--表格控件 -->
        <div id="widget table-widget">
            <div class="pageTitle">会员修改</div>
            <div class="pageInfo">
                <table >
                    <input type="hidden" name="memberid" value="${QMembers.memberid}">
                    <tr>
                        <td width="20%" align="right">用户名</td>
                        <td width="20%"><input type="text" name="name" value="${QMembers.name}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">密码</td>
                        <td width="50%"><input type="text" name="password" value="${QMembers.password}"/></td>
                        <td width="10%" align="right">真实姓名</td>
                        <td width="50%"><input type="text" name="realname" value="${QMembers.realname}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">身份证号</td>
                        <td width="50%"><input type="text" name="credit" value="${QMembers.credit}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">电话</td>
                        <td width="50%"><input type="text" name="tel" value="${QMembers.tel}"/></td>
                        <td width="10%" align="right">性别</td>
                        <td width="50%"><input type="text" name="sex" value="${QMembers.sex}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">年龄</td>
                        <td width="50%"><input type="text" name="age" value="${QMembers.age}"/></td>
                        <td width="10%" align="right">过敏史</td>
                        <td width="50%"><input type="text" name="anaphylaxis" value="${QMembers.anaphylaxis}"/></td>
                    </tr>

                    <tr>
                        <td colspan="4" align="center"><input type="submit" value="修改"/> </td>
                    </tr>
                </table>
            </div>
        </div><!-- #widget -->
    </div>
</form>
</div>


</div>
</body>
</html>
