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
<form action="${pageContext.request.contextPath}/drugs/addDrugs" method="post" >
    <div id="contentWrap">
        <!--表格控件 -->
        <div id="widget table-widget">
            <div class="pageTitle">药品添加</div>
            <div class="pageInfo">
                <table>
                   <!-- <tr>
                        <td width="20%" align="right">药品ID</td>
                        <td width="20%"><input type="text" id="ypid" name="drugsid" /></td>
                        <td width="10%" align="right"></td>
                        <td width="50%"></td>
                    </tr>
                    -->
                    <tr>
                        <td width="20%" align="right">药品名</td>
                        <td width="20%"><input type="text" id="names" name="name" /></td>
                        <td width="10%" align="right">进价</td>
                        <td width="50%"><input type="text" id="moneys" name="purchaseprice" /></td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">售价</td>
                        <td width="20%"><input type="text" id="mmoneys" name="price" /></td>
                        <td width="10%" align="right">库存数量</td>
                        <td width="50%"><input type="text" id="num" name="num" /></td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">生产厂商</td>
                        <td width="20%"><input type="text" id="manufacturer" name="productunit" /></td>
                        <td width="10%" align="right">生产日期</td>
                        <td width="50%"><input type="date" id="dayofm" name="productdate" onClick="SelectDate(this.name)"/></td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">保质期</td>
                        <td width="20%"><input type="date" id="qualityofp" name="qualityperiod" onClick="SelectDate(this.name)"/></td>
                        <td width="10%" align="right">经销商</td>
                        <td width="50%"><input type="text" id="agency" name="supplyunit" /></td>
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
