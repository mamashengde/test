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
    <title>修改医生信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
</head>
<body>
<form action="${pageContext.request.contextPath}/doctors/updateDoctors" method="post">
    <div id="contentWrap">
        <!--表格控件 -->
        <div id="widget table-widget">
            <div class="pageTitle">医生修改</div>
            <div class="pageInfo">
                <table >
                    <input type="hidden" name="docid" value="${QDoctors.docid}">
                    <tr>
                        <td width="20%" align="right">用户名</td>
                        <td width="20%"><input type="text" name="name" value="${QDoctors.name}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">密码</td>
                        <td width="50%"><input type="text" name="password" value="${QDoctors.password}"/></td>
                        <td width="10%" align="right">真实姓名</td>
                        <td width="50%"><input type="text" name="realname" value="${QDoctors.realname}"/></td>
                    </tr>

                    <tr>
                        <td align="right">所属科室</td>
                        <td >
                            <select id="depart" name="departid" >
                                <option value="">请选择</option>
                                <option value="1">外科</option>
                                <option value="2">内科</option>
                                <option value="3">神经科</option>
                                <option value="4">心脏科</option>
                            </select>
                        </td>
                        <td align="right">职称</td>
                        <td >
                            <select id="positional" name="positional" >
                                <option value="">请选择</option>
                                <option value="1">技师</option>
                                <option value="2">主任医师</option>
                                <option value="3">专家</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">电话</td>
                        <td width="50%"><input type="text" name="tel" value="${QDoctors.tel}"/></td>
                        <td width="10%" align="right">性别</td>
                        <td width="50%"><input type="text" name="sex" value="${QDoctors.sex}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">年龄</td>
                        <td width="50%"><input type="text" name="age" value="${QDoctors.age}"/></td>
                        <td width="10%" align="right">家庭住址</td>
                        <td width="50%"><input type="text" name="address" value="${QDoctors.address}"/></td>
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
