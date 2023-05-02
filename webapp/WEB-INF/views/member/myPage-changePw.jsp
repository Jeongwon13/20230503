<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<%-- 문자열 관련 함수(메서드) 제공 JSTL (EL형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <link rel="stylesheet" href="${contextPath}/resources/css/mainstyle.css">
 <script src="https://kit.fontawesome.com/a2e8ca0ae3.js" crossorigin="anonymous"></script>
</head>
<body>
 <main>
 	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
 	
 	<jsp:include page="/WEB-INF/views/member/sideMenu.jsp"/>
 	
 	<section>
 	<form action="changePw" method="post" name="changPwForm"  onsubmit="return changePwValidate()">
 		<div>
 			<label>현재 비밀번호</label>
 			<input type="password" name="currentPw" id="currentPw" >
 		</div>
 		
 		<div>
 			<label>새 비밀번호</label>
 			<input type="password" name="newPw" >
 		</div>
 		
 		<div>
 			<label>새 비밀번호 확인</label>
 			<input type="password" name="newPwConfirm">
 		</div>
 		
 		<button>변경하기</button>
 	
 	
 	</form>
 	</section>
 	
 	
 </main>
   <!-- myPage.js 추가 -->
    <script src="${contextPath}/resources/js/member/myPage.js"></script>
</body>
</html>