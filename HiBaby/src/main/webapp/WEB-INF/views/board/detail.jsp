<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세페이지</title>
</head>
<style>
	.detailContainer {
		width: 850px;
		margin: 0 auto;
	}
	
	.imgDiv {
		display: flex;
	}
	
	.selProductFile {
		width: 200px;
		height: 200px;
		margin-left: 12px;
	}
	
	.profileImg {
		width: 150px;
		height: 150px;
	}
			
	
	
</style>
<body>
	<div class="detailContainer">
		<div class="imgDiv">
			<c:if test="${data.i_board != null}">
				<c:if test="${data.image_1 != '' }">
					<img src="/res/img/board/${data.i_board }/${data.image_1}" class="selProductFile">
				</c:if>
				<c:if test="${data.image_2 != '' }">
					<img src="/res/img/board/${data.i_board }/${data.image_2}" class="selProductFile">
				</c:if>					
				<c:if test="${data.image_3 != '' }">
					<img src="/res/img/board/${data.i_board }/${data.image_3}" class="selProductFile">
				</c:if>
				<c:if test="${data.image_4 != '' }">
					<img src="/res/img/board/${data.i_board }/${data.image_4}" class="selProductFile">
				</c:if>
			</c:if>
		</div>
		<br>
		<div>i_user : ${data.i_user}</div>
		<div>닉네임 : ${data.nick }</div>
		<div>제목 : ${data.title }</div>
		<div>내용 : ${data.ctnt }</div>
		<br>
		<c:if test="${loginUser.profile_img == null }">
     		<img src="/res/img/HiBaby.jpg" onchange="setThumbnail(e)" alt="" class="profileImg">
     	</c:if>
     	<c:if test="${loginUser.profile_img != null }">
             <img src="/res/img/HiBaby/profile_img/user/${loginUser.i_user }/${loginUser.profile_img}" class="profileImg">                    	
     	</c:if>
     	<c:if test="${loginUser.i_user == data.i_user}">
     		<button>수정</button>
     		<button onclick="boardDelete(${data.i_board})">삭제</button>
     	</c:if>
	</div>
	
<script>
	if(${deleteErr != null}) {
		alert('${deleteErr}')
	}
	d
	function boardDelete(i_board) {
		location.href="/board/delete?i_board="+i_board
	}
</script>
</body>
</html>