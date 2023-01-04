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
    <title>修改药品信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.min.js"></script>
</head>
<body>
<form action="${pageContext.request.contextPath}/drugs/updateDrugs" method="post">
    <div id="contentWrap">
        <!--表格控件 -->
        <div id="widget table-widget">
            <div class="pageTitle">药品修改</div>
            <div class="pageInfo">
                <table >
                    <input type="hidden" name="drugsid" value="${QDrugs.drugsid}">
                    <tr>
                        <td width="20%" align="right">药品名称</td>
                        <td width="20%"><input type="text" name="name" value="${QDrugs.name}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">药品进价</td>
                        <td width="50%"><input type="text" name="purchaseprice" value="${QDrugs.purchaseprice}"/></td>
                        <td width="10%" align="right">药品售价</td>
                        <td width="50%"><input type="text" name="price" value="${QDrugs.price}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">药品数量</td>
                        <td width="50%"><input type="text" name="num" value="${QDrugs.num}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">药品生产日期</td>
                        <td width="50%"><input type="date" name="productdate" value="${QDrugs.productdate}"/></td>
                        <td width="10%" align="right">药品保质期</td>
                        <td width="50%"><input type="date" name="qualityperiod" value="${QDrugs.qualityperiod}"/></td>
                    </tr>

                    <tr>
                        <td width="10%" align="right">药品供应方</td>
                        <td width="50%"><input type="text" name="supplyunit" value="${QDrugs.supplyunit}"/></td>
                        <td width="10%" align="right">药品生产方</td>
                        <td width="50%"><input type="text" name="productunit" value="${QDrugs.productunit}"/></td>
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
