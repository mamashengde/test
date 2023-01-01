<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="/SSM_test/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
  $().ready(function(){
	  $.ajax({
	          url : '/SSM_test/hello3',
	          type : 'post',
	          data : {id:'1',username:'test'},
	          contentType : 'application/json; charset=utf-8',
	  		  success:function(data){
				  alert(data);
			    }
	       });
  });
</script>
