<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="/SSM_test/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
  $().ready(function(){
  $.getJSON('/SSM_test/hello',{id:'1',username:'test'},
     function(data){
    	 alert(data.id+" , "+data.username);
     });
   });
</script>
</html>
