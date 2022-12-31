<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="/SSM_test/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
  $().ready(function(){
	  var jsonData = {  
	            "id" : "phone",  
	            "username" : "999"  
	    };
	  $.ajax({
	          url : '/SSM_test/hello',
	          type : 'post',
// 	 		  data:jsonData,
	          data : {id:'1',username:'test'},
	          contentType : 'application/json; charset=utf-8',
	  		  success:function(data){
				  alert(data);
			    }
	       });
//   $.post('/SSM_test/hello',{id:'1',username:'test'},
//     function(data){
// 	  alert(data.id+" , "+data.username);
//     });
  });
</script>
