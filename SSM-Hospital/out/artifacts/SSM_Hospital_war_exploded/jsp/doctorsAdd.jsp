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
<form method="post" action="${ctx}/doctors/addDoctors" method="post" name="ThisForm">
    <div id="contentWrap">
        <!--表格控件 -->
        <div id="widget table-widget">
            <div class="pageTitle">医生添加</div>
            <div class="pageInfo">
                <table >
                    <tr>
                        <td width="20%" align="right">用户名</td>
                        <td width="20%"><input type="text" id="username" name="name" class="form-control"  required/></td>
                        <td width="10%" align="right">密码</td>
                        <td width="50%"><input type="text" id="password" name="password" class="form-control"  required/></td>
                    </tr>
                    <tr>
                        <td align="right">真实姓名</td>
                        <td ><input type="text" id="realname" name="realname" class="form-control"  required/></td>
                        <td align="right">所属科室</td>
                        <td >
                            <select id="depart" name="departid">
                                <option value="1">外科</option>
                                <option value="2">内科</option>
                                <option value="3">神经科</option>
                                <option value="4">心脏科</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td align="right">职称</td>
                        <td >
                            <select id="positional" name="positional">
                                <option value="1">技师</option>
                                <option value="2">主任医师</option>
                                <option value="3">专家</option>
                            </select>
                        </td>
                        <td align="right">联系电话</td>
                        <td><input type="text" id="tel" name="tel" class="form-control"  required/></td>
                    </tr>
                    <tr>
                        <td align="right">年龄</td>
                        <td ><input type="text" id="age" name="age" class="form-control"  required/></td>
                        <td align="right">性别</td>
                        <td ><input type="text" id="sex" name="sex" class="form-control"  required/></td>
                    </tr>
                    <tr>
                        <td align="right">家庭住址</td>
                        <td ><input type="text" id="address" name="address" class="form-control"  required/></td>
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

