<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/rl.js"></script>

    <style type="text/css">
        body {
            background:#FFF
        }
    </style>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/doctorduty/addDoctorduty" method="post" name="ThisForm">
    <div id="contentWrap">
        <!--表格控件 -->
        <div id="widget table-widget">
            <div class="pageTitle">医生值班添加</div>
            <div class="pageInfo">
                <table>

                    <tr>
                        <td width="20%" align="right">医生ID</td>
                        <td><input id="docid" name="docid" type="text" class="scinput" /></td>

                        <td width="10%" align="right">日期</td>
                        <td width="50%"><input type="text" id="dutydate" name="dutydate" onClick="SelectDate(this.name)" /> </td>
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
<%--<div class="form-group">--%>
<%--    <label >医生id：</label>--%>
<%--    <input type="text" name="docid" class="form-control"  required>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--    <label >日期：</label>--%>
<%--    &lt;%&ndash;                        <input type="text" name="bookCounts" class="form-control" required>&ndash;%&gt;--%>
<%--    <input type="text" id="dutydate" name="dutydate" onClick="SelectDate(this.name)" />--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--    <input type="submit" class="form-control" value="确定"  >--%>
<%--</div>--%>
