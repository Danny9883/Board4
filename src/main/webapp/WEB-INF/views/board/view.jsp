<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib  prefix="c" uri="jakarta.tags.core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/img/favicon.png" type="image/x-icon" />
<link href="/css/common.css" rel="stylesheet" />

<style>
	table { width: 100%; }
	
	td {
		padding: 5px 10px;
		text-align: center;
		&:nth-of-type(1) {
			background-color: black;
			color: white;
			border: 1px solid white;
		}
	}
	tr:last-child >td{
		background-color: white;
		border: 1px solid black;
	}
		
	
	.menu td> .${ board.menu_id } {background-color: #04AA6D;}
	
	.menu tr:first-of-type {
	background-color: black;
	color: white;
	td {
		border : 1px solid white;
		text-align: center;
	}
	
	
	

</style>
</head>
<body>
	<main>
	<%@include file="/WEB-INF/include/menus.jsp" %>
		<h2>게시글 내용 보기</h2>
		<table>
			<tr>
				<td>글 번호</td>
				<td>${ board.idx }</td>
				<td>조회수</td>
				<td>${ board.hit }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${ board.writer }</td>
				<td>작성일</td>
				<td>${ board.regdate }</td>
			</tr>
			<tr>
				<td>제목</td>
				<td colspan="3">${ board.title }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td colspan="3" >${ board.content }</td>
			</tr>
			<tr>
				<td colspan="4">
					<a href="/Board/WriteForm">[새 글 쓰기]</a>
					<a href="/Board/UpdateForm?idx=${board.idx}">[수정]</a>
					<a href="/Board/Delete?idx=${board.idx}">[삭제]</a>
					<a href="/Board/List">[글 목록]</a>
					<a href="/">[Home]</a>
				</td>
			</tr>
		</table>		
	
	</main>
	
	
	
	
	<script>
	
	</script>

</body>
</html>