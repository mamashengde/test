<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/includehead.jsp"%>
<!DOCTYPE HTML>
<html>
<script type="text/javascript">
$(function(){
	//setMenuHeight
	$("#modifyPassword").click(function() {
		 $("#showModify").dialog({
				title:'修改密码',
				width:430,
				height:230,
				buttons:{
		            "确定":function(){},
		            "取消":function(){$(this).dialog('close');}
		        }
			});
	 });
	$('.menu').height($(window).height()-51-27-26-5);
	$('.sidebar').height($(window).height()-51-27-26-5);
	$('.page').height($(window).height()-51-27-26-5);
	$('.page iframe').width($(window).width()-15-168);
});

</script>
<body style="overflow-y:hidden">
<div id="wrap">
	<div id="header">
    <div class="logo fleft"></div>
	<div class="topright">
	<ul>
		<li><span style="color:#fff ">欢迎你：${user.realname}</span></li>
	    <li><span><img src="${ctx}/images/index-logout.png" class="helpimg" height="16" width="16"/></span><a href="${ctx}/logout.action">注销</a></li>
	    <li><span><img src="${ctx}/images/t07.png" class="helpimg" height="16" width="16"/></span><a href="${ctx}/jsp/userpwdupdate.jsp">修改密码</a></li>
	</ul>
	</div>
    <div class="clear"></div>
    <div class="subnav">
    	<div class="subnavLeft fleft"></div>
        <div class="fleft"></div>
        <div class="subnavRight fright"></div>
    </div>
    </div><!--#header -->
    <div id="content">
    <div class="space"></div>
    <div class="menu fleft">
      <ul>
        <li class="subMenuTitle">菜单</li>
   		<c:if test="${user.role=='01'}"><!-- 管理员：用户信息管理、医生信息管理、科室管理、医生值班管理 -->
        	<ul>
               <li><a href="${ctx}/user/queryUserList" target="right">用户管理</a></li>
               <li><a href="${ctx}/html/yplist.html" target="right">药品信息管理</a></li>
               <li><a href="${ctx}/html/yslist.html" target="right">医生管理</a></li>
               <li><a href="${ctx}/html/kslist.html" target="right">科室管理</a></li>
               <li><a href="${ctx}/html/memberlist.html" target="right">会员管理</a></li>
               <li><a href="${ctx}/html/ghlist.html" target="right">挂号管理</a></li>
               <li><a href="${ctx}/html/yszblist.html" target="right">医生值班管理</a></li>
               <li><a href="${ctx}/html/yzlist.html" target="right">医生诊断管理</a></li>
               <li><a href="${ctx}/html/payDlist.html" target="right">缴费明细查询</a></li>
               <li><a href="${ctx}/html/settleDlist.html" target="right">费用结算明细查询</a></li>
            </ul>
           </c:if>
           <c:if test="${user.role=='02'}"><!-- 服务台员工：会员管理、挂号、结算 -->
           	<ul> 
               <li><a href="${ctx}/html/memberlist.html" target="right">会员管理</a></li>
               <li><a href="${ctx}/html/ghlist.html" target="right">挂号管理</a></li>
               <li><a href="${ctx}/settle/allSettle" target="right">费用结算</a></li>
            </ul>
           </c:if>
           <c:if test="${user.role=='03'}"><!-- 药剂师：药品管理、药品发放 -->
           	<ul> 
               <li><a href="${ctx}/html/yplist.html" target="right">药品信息管理</a></li>
               <li><a href="${ctx}/html/ypfflist.html" target="right">药品发放</a></li>
            </ul>
           </c:if>
           <c:if test="${user.role=='04'}"><!-- 医生：医生值班、医生诊断 -->
           	<ul> 
              <li><a href="${ctx}/doctorduty/allDoctorduty" target="right">医生值班</a></li>
               <li><a href="${ctx}/html/myyzlist.html" target="right">医生诊断</a></li>
            </ul>
           </c:if>
           <c:if test="${user.role=='05'}"><!-- 会员：预约挂号、缴费明细查询 -->
           	<ul> 
               <li><a href="${ctx}/html/yyghadd.html" target="right">预约挂号</a></li>
               <li><a href="${ctx}/html/payDlist.html" target="right">缴费明细查询</a></li>
            </ul>
           </c:if>
        </ul>
    </div>
    <div class="sidebar fleft"><div class="btn"></div></div>
    <div class="page">
    <iframe width="100%" scrolling="auto" height="100%" frameborder="false" allowtransparency="true" style="border: medium none;" src="${ctx}/jsp/main.jsp" id="rightMain" name="right"></iframe>
    </div>
    </div><!--#content -->
    <div class="clear"></div>
    <div id="footer">CopyRight &copy; 2017-2018  </div><!--#footer -->
</div><!--#wrap -->
</body>
</html>
