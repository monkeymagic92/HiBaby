<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HiBaby</title>
<style>
	#navDefaultTemp {
		height: 65px;
		border-radius: 5px;
	}
	.container {
		margin: 0 auto;
		margin-top: 15px;
		width: 800px;		
	}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body>
	<div class="container">
		<nav id="navDefaultTemp">
		    <div id="navWrapperId" class="nav-wrapper">
		        <a href="/index/select" class="brand-logo">&nbsp&nbsp HiBaby</a>
		        <ul class="right hide-on-med-and-down">
		            <li><a href="#">사진</a></li>
		            <li><a href="#">쪽지(아이콘넣기)</a></li>
		            <li><a href="#">???</a></li>
		            <li><a href="#"><img href="#">회원사진</a></li>
		        </ul>
		    </div>
	  	</nav>
  </div>
  
  <!-- include 적용시키기 -->
  <jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
  
<script>

</script>
</body>
</html>