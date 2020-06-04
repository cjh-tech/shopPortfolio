<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Portfolio Board</title>
</head>
<body>
	<!--  전체폭까지 늘어나는 최대폭 콘테이너  -->
	<div class="container-fluid">
		<nav class="navbar navbar-default">
			<!-- Brand and toggle get grouped for better mobile display -->
			<a class="navbar-brand" href="#">의료구매사이트</a>
			<ul class="nav navbar-nav">
				<li><a href="best">베스트상품</a></li>
				<li><a href="mask">위생용품</a></li>
				<li><a href="medicine">의약품</a></li>
				<li><a href="food">건강기능식품</a></li>
			</ul>
		</nav>
		<ul class="nav navbar-nav navbar-right">
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="상품검색">
				</div>
				<button type="submit" class="btn btn-default">검색</button>
			</form>
			<li><a href="login">로그인</a></li>
			<li><a href="adminlogin">관리자로그인</a></li>
			<li><a href="register">회원가입</a></li>
			<li><a href="bucket">장바구니</a></li>
			<li><a href="customercenter">고객센터</a></li>
		</ul>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">당신의 생각을 자유롭게</div>
			<!-- Table -->
			<table class="table">
				<tr>
					<th>게시글번호</th>
					<th>아이디</th>
					<th>제목</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>
				 <c:forEach items="${list}" var="vo">
                    <tr>
                        <td>${vo.idx}</td>
                        <td>${vo.id}</td>
                        <td><a href="boardDetail?idx=${vo.idx}">${vo.subject}</a></td>
                        <td>${vo.count}</td>
                        <td>${vo.regdate}</td>
                   </tr>
                </c:forEach>
		</table>
		</div>
		<div class="btn-group">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown" aria-expanded="false">
				검색 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li>아이디</li>
				<li>제목</li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">검색</button>
			</form>
		</div>
		<div id=nav>
			<ul class="pagination">
				<li class="disabled"><a href="#" aria-label="Previous"><span
						aria-hidden="true">&laquo;</span></a></li>
				<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>
	</div>
	<!-- /.container-fluid -->
</body>
</html>