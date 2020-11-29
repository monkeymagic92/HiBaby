<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">

<style>

#boardTable {
	margin-top:15px;
}

.writeBtn {
	margin-left: 220px;
	justify-content: flex-end;
}

.searchDiv {
	display: flex;
}

.searchForm {
	width: 400px;
	margin-left: 380px;
}

#listBtn {
	justify-content: flex-start;
}
</style>
</head>
<body>
	<div class="searchDiv">
		<div class="searchForm">
			<form id="searchFrm" action="/board/list" method="get" onsubmit="return chk()" class="form-inline active-cyan-4">
				<!-- 
					select option 으로 제목, 작성자 값 보내기
				 -->
				<button id="listBtn" class="btn btn-outline-primary" type="button" onclick="moveToBoardList()">전체글</button>
		        <input class="form-control form-control-sm mr-3 w-75" type="text" name="search" placeholder="Search" aria-label="Search">
		        <input type="hidden" name="searchResult" value="1">
		        <input type="submit" value="">
		        <!-- <i class="fas fa-search" aria-hidden="true"></i> -->
	    	</form>
    	</div>
		
		<div class="writeBtn">
			<button  type="button" class="btn btn-outline-primary" onclick="moveToWrite(${loginUser.i_user})">글쓰기</button>
		</div>		
	</div>
	<div>게시글 : ${totalCount}</div>
	<table id="boardTable" class="table table-striped">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">등록시간</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="item">
				<tr>
					<th scope="row">${item.i_board }</th>
					<td>${item.title }</td>
					<td>${item.nick }</td>
					<td>${item.r_dt }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
	function moveToWrite(i_user) {
		location.href="/board/insBoard?i_user="+i_user
	}
	
	function moveToBoardList() {
		location.href="/board/list";
	}
	
	function chk() {
		if(searchFrm.search.value.length > 20) {
			alert('검색 내용이 너무 깁니다')
			searchFrm.search.focus()
			return false
		}
	}
</script>
</body>
</html>