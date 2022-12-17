<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>
<h1>팀원 정보 수정</h1>
<form:form modelAttribute="u" action="../editok" method="post">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>이름:</td><td><form:input path="name"/></td></tr>
		<tr><td>학번:</td><td><form:input path="student_number"/></td></tr>
		<tr><td>학부:</td><td><form:select path="major">
			<form:option value="글로벌리더십학부">글로벌리더십학부</form:option>
			<form:option value="전산전자공학부">전산전자공학부</form:option>
			<form:option value="경영경제학부">경영경제학부</form:option>
			<form:option value="생명과학부">생명과학부</form:option>
			<form:option value="기계제어공학부">기계제어공학부</form:option>
			<form:option value="공간환경시스템공학부">공간환경시스템공학부</form:option>
			<form:option value="콘텐츠융합디자인학부">콘텐츠융합디자인학부</form:option>
			<form:option value="커뮤니케이션학부">커뮤니케이션학부</form:option>
			<form:option value="법학부">법학부</form:option>
			<form:option value="ICT창업학부">ICT창업학부</form:option>
			<form:option value="국제어문학부">국제어문학부</form:option>
			<form:option value="상담심리사회복지학부">상담심리사회복지학부</form:option>
		</form:select></td></tr>
		<tr><td>전화번호:</td><td><form:input path="phone_number"/></td></tr>
		<tr><td>출결체크:</td>
			<td>
				<form:radiobutton path="attendance" value="출석" label="출석"/>
				<form:radiobutton path="attendance" value="결석" label="결석"/>
			</td>
		</tr>
		<tr><td>이메일:</td><td><form:input path="mail"/></td></tr>
		<tr><td>성별:</td>
			<td>
				<form:radiobutton path="gender" value="여자" label="여자"/>
				<form:radiobutton path="gender" value="남자" label="남자"/>
			</td>
		</tr>
		<tr><td>거주형태(기숙사/외부거주):</td>
			<td>
				<form:radiobutton path="inhabit_type" value="기숙사" label="기숙사거주"/>
				<form:radiobutton path="inhabit_type" value="외부거주" label="외부거주"/>
			</td>
		</tr>
		<tr><td colspan="2"><input type="submit" value="수정하기"/>
		<input type="button" value="취소하기" onclick="history.back()"/></td></tr>
	</table>
</form:form>

</body>
</html>