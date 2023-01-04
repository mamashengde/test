<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript">
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
<form action="${pageContext.request.contextPath}/user/addUser" method="post">
    <div id="contentWrap">
        <!--表格控件 -->
        <div id="widget table-widget">
            <div class="pageTitle">用户添加</div>
            <div class="pageInfo">
                <table >
                    <tr>
                        <td width="20%" align="right">用户名</td>
                        <td width="20%"><input type="text" id="username" name="username"/></td>
                        <td width="10%" align="right">用户密码</td>
                        <td width="50%"><input type="text" id="password" name="password"/></td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">姓名</td>
                        <td width="20%"><input type="text" id="realname" name="realname"/></td>
                        <td width="10%" align="right">性别</td>
                        <td width="50%">
                            <select id="sex" name="sex" >
                                <option value="男">男</option>
                                <option value="女">女</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="10%" align="right">用户类型</td>
                        <td width="50%">
                            <select id="role" name="role" >
                                <option value="01">管理员</option>
                                <option value="02">服务台员工</option>
                                <option value="03">药剂师</option>
                                <option value="04">医生</option>
                                <option value="05">会员</option>
                            </select>
                        </td>
                        <td width="20%" align="right">所属科室</td>
                        <td width="20%">
                            <select id="depart" name="depart" >
                                <option value="">-请选择-</option>
                                <option value="01">外科</option>
                                <option value="02">内科</option>
                                <option value="03">神经科</option>
                                <option value="04">心脏科</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">职称</td>
                        <td width="20%">
                            <select id="positional" name="positional" >
                                <option value="">-请选择-</option>
                                <option value="01">技师</option>
                                <option value="02">主任医师</option>
                                <option value="03">专家</option>
                            </select>
                        </td>
                        <td width="10%" align="right">联系电话</td>
                        <td width="50%"><input type="text" id="tel" name="tel"/></td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">年龄</td>
                        <td width="20%"><input type="text" id="age" name="age"/></td>
                        <td width="10%" align="right">家庭住址</td>
                        <td width="50%"><input type="text" id="address" name="address"/></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center"><input type="submit" value="确定"/> </td>
                    </tr>
                </table>
            </div>
        </div><!-- #widget -->
    </div>
</form>
</body>
</html>

