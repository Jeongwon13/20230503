<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="signUp" method="post" onsubmit="return signUpValidate()">
		<fieldset>
		<table>
			<tr>
				<th>이메일</th>
				<td><input type="text" id="memberEmail" name="memberEmail"></td>
				<td><span id=emailMessage></span></td>
				<td><button>중복확인</button></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" id="memberPw" name="memberPw"></td>
				<td><span id="pwMessage"></span></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" id="memberPwConfirm" name="memberPwConfirm"></td>
				<td></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><input type="text" id="memberNickname" name="memberNickname"></td>
				<td><span id="nicknameMessage"></span></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="tel" id="memberTel" name="memberTel"></td>
				<td><span id="telMessage"></span></td>
			</tr>
			<tr>
				<th>주소</th>
				 <td> 
               
                     <input type="text" id="sample4_postcode" name="memberAddress"
                             placeholder="우편번호" maxlength="6">
                     
                     <button type="button" onclick="return sample4_execDaumPostcode()">검색</button>
                     <input type="text" id="sample4_roadAddress" name="memberAddress" placeholder="도로명주소">
                     <input type="text" id="sample4_detailAddress" name="memberAddress" placeholder="상세주소">
                  
 				</td>
			</tr>

		</table>
		<button>회원가입</button> 
	</fieldset>
	</form>
	
	  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <!-- 다음 주소 API -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <!-- signUp.js 연결 -->
    <script src="${contextPath}/resources/js/member/signUp.js"></script>
</body>
</html>