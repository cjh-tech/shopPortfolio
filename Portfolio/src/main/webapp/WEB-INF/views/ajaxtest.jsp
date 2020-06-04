<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"/></script>
<script type="text/javascript">
 $(document).ready(function(){

		
	 $('#checkbtn').on('click',function(){
		var checkid = /^[a-zA-Z0-9]{6,14}$/;
		if(!checkid.test( $('#id').val())){
			alert("아이디는 영어 대소문자, 숫자 , 길이 6~14 만 가능합니다")
	    	return false;
		}		 
		$.ajax({
			type:'POST',
			url:'<c:out value="${pageContext.request.contextPath}" />/ajaxtest',
			data:{
				"id" : $('#id').val()
			},
			success:function(data){
				
				if($.trim(data) == 0){
					$('#checkMsg').html('<p style="color:blue">사용가능</p>');
					$("#popUpid_check").val("yes");
				}else{
					$('#checkMsg').html('<p style="color:red">사용불가능</p>');
					$("#popUpid_check").val("no");
				}

									
			 }
			}); 
 		 });
	 });

function callBack(){
	var id=$("#id").val();
	var idConfirm= $("#popUpid_check").val();
	opener.idCallBack(id,idConfirm);
	window.close();
}

function popupClose(){
	callBack();	
}
 
</script>	
</head>
<body>
   <label for="id">아이디</label>
   <input type="text" id="id" name="id" placeholder="아이디입력"/>
   <input type="hidden" id="popUpid_check" value="no" />
   <div id = "checkMsg"></div>
   <button type="submit" id="checkbtn">중복확인</button>
   <button type="button" onclick="popupClose()">닫기</button>
   
</body>
</html>