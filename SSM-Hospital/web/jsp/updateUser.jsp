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
    <title>修改用户信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
</head>
<body>
        <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
            <div id="contentWrap">
                <!--表格控件 -->
                <div id="widget table-widget">
                    <div class="pageTitle">用户修改</div>
                    <div class="pageInfo">
                        <table >
                            <input type="hidden" name="id" value="${QUser.id}">
                            <tr>
                                <td width="20%" align="right">用户名</td>
                                <td width="20%">
                                    <input type="text" name="username" class="form-control" value="${QUser.username}" required/>
                                </td>
                            </tr>
                            <tr>
                                <td width="20%" align="right">姓名</td>
                                <td width="20%"><input type="text"  name="realname" value="${QUser.realname}"/></td>
                                <td width="10%" align="right">用户类型</td>
                                <td width="50%">
                                    <select id="role" name="role" >
                                        <option value="0">-请选择-</option>
                                        <option value="01">管理员</option>
                                        <option value="02">大堂服务员</option>
                                        <option value="03">药剂师</option>
                                        <option value="04">医生</option>
                                        <option value="05">会员</option>
                                    </select>
                                </td>
                            </tr>

                            <!--<tr>
                                <td width="20%" align="right">所属科室</td>
                                <td width="20%">
                                    <select id="depart" name="depart" >
                                        <option value="0">请选择</option>
                                        <option value="1">外科</option>
                                        <option value="2">内科</option>
                                        <option value="3">神经科</option>
                                        <option value="4">心脏科</option>
                                    </select>
                                </td>
                                <td width="20%" align="right">职称</td>
                                <td width="20%">
                                    <select id="positional" name="positional" >
                                        <option value="0">请选择</option>
                                        <option value="1">技师</option>
                                        <option value="2">主任医师</option>
                                        <option value="3">专家</option>
                                    </select>
                                </td>
                            </tr>-->
                            <tr>
                                <td width="10%" align="right">联系电话</td>
                                <td width="50%"><input type="text" name="tel" value="${QUser.tel}"/></td>
                                <td width="20%" align="right">年龄</td>
                                <td width="20%"><input type="text" name="age" value="${QUser.age}"/></td>
                            </tr>
                            <tr>
                                <td width="10%" align="right">家庭住址</td>
                                <td width="50%"><input type="text" name="address" value="${QUser.address}"/></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <!--<tr>
                                 <td width="10%" align="right">创建日期</td>
                                 <td width="50%"><input type="date" id="createdate" name="createdate"></td>
                                 <td></td>
                                 <td></td>
                             </tr>-->

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
