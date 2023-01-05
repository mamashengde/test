<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/rl.js"></script>
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
<form action="${pageContext.request.contextPath}/members/addMembers" method="post" >
    <div id="contentWrap">
        <!--表格控件 -->
        <div id="widget table-widget">
            <div class="pageTitle">会员添加</div>
            <div class="pageInfo">
                <table>
                    <tr>
                        <td width="20%" align="right">用户名</td>
                        <td width="20%"><input type="text"  name="name" class="form-control"  required/></td>
                        <td width="10%" align="right">密码</td>
                        <td width="50%"><input type="text"  name="password" class="form-control"  required/></td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">真实姓名</td>
                        <td width="20%"><input type="text"  name="realname" class="form-control"  required/></td>
                        <td width="10%" align="right">身份证号</td>
                        <td width="50%"><input type="text"  name="credit" class="form-control"  required/></td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">电话</td>
                        <td width="20%"><input type="text"  name="tel" class="form-control"  required/></td>
                        <td width="10%" align="right">年龄</td>
                        <td width="50%"><input type="text"  name="age" class="form-control"  required/></td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">性别</td>
                        <td width="20%"><input type="text" name="sex" class="form-control"  required/></td>
                        <td width="10%" align="right">过敏史</td>
                        <td width="50%"><input type="text"  name="anaphylaxis" class="form-control"  required/></td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center"><input type="submit" value="确定" /></td>
                    </tr>
                </table>
            </div>
        </div><!-- #widget -->
    </div>
</form>
</body>
</html>
