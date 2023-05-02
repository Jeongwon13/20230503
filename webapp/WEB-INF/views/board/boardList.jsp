<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<c:forEach var="boardType" items="${boardTypeList}">
	<c:if test="${boardCode == boardType.boardCode }">
		<c:set var="boardName" value="${boardType.boardName }" />
	</c:if>
</c:forEach>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
</head>
<body>
 <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
	<div>
		<table>
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty boardList }">
						<tr>
							<th colspan="5">게시글이 존재하지 않습니다.</th>
						</tr> 
					</c:when>
					<c:otherwise>
						<c:forEach var="board" items="${boardList}">
							
						
						</c:forEach>
						
					</c:otherwise>
				
				
				
				</c:choose>
			</tbody>
		</table>
	</div>
	

</main>

</body>
</html>