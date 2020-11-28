<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	
</style>
<body>
	<form id="frm" action="/board/insBoard" method="post" enctype="multipart/form-data" onsubmit="return chk()">
		파일등록 :
		<input type="file" name="images" id="mfile" multiple accept="image/png, image/jpeg, image/jpg">
		<br><br>
		제목 :
		<input type="text" name="title">
		<br><br>
		내용 :
		<textarea name="ctnt" rows="100" cols="10">
			
		</textarea>
		<input type="hidden" name="i_user" value="${loginUser.i_user}">
		<c:if test="${data.i_board == null }">
        	<input type="hidden" name="boardResult" value="1">
        </c:if>
        <c:if test="${data.i_board != null }">
        	<input type="hidden" name="boardResult" value="2">
        	<input type="hidden" name="i_board" value="${data.i_board }"> 
        </c:if>
		<input type="submit" value="글등록">
	</form>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
if(${ImageFail != null}) {
	alert('${ImageFail}')
} 

if(${serverErr != null}) {
	alert('${serverErr}')
}

// 이미지 5장까지 업로드가능하게 막기 

function chk() {
	
}
</script>
</body>
</html>