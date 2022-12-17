<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title>새 글쓰기</title>
</head>
<body>
<h1>팀원 정보 입력</h1>
<form action="addok" method="post">
  <table id ="edit">
    <tr><td>이름:</td><td><input type="text" name="name"/></td></tr>
    <tr><td>학번:</td><td><input type="text" name="student_number"/></td></tr>
    <tr><td>학부:</td><td><select name="major">
        <option value="글로벌리더십학부">글로벌리더십학부</option>
        <option value="전산전자공학부">전산전자공학부</option>
        <option value="경영경제학부">경영경제학부</option>
        <option value="생명과학부">생명과학부</option>
        <option value="기계제어공학부">기계제어공학부</option>
        <option value="공간환경시스템공학부">공간환경시스템공학부</option>
        <option value="콘텐츠융합디자인학부">콘텐츠융합디자인학부</option>
        <option value="커뮤니케이션학부">커뮤니케이션학부</option>
        <option value="법학부">법학부</option>
        <option value="ICT창업학부">ICT창업학부</option>
        <option value="국제어문학부">국제어문학부</option>
        <option value="상담심리사회복지학부">상담심리사회복지학부</option>
    </select></td></tr>
    <tr><td>전화번호:</td><td><input type="text" name="phone_number"/></td></tr>
    <tr><td>출결체크:</td><td><input type="text" name="attendance"/></td></tr>
    <tr><td>이메일:</td><td><input type="text" name="mail"/></td></tr>
    <tr><td>성별:</td>
      <td>
        <input type="radio" id="girl" name="gender" value="여자"/><label for="girl">여자</label><br>
        <input type="radio" id="boy" name="gender" value="남자"/><label for="boy">남자</label><br>
      </td>
    </tr>
    <tr><td>거주형태(기숙사/외부거주):</td>
      <td>
        <input type="radio" id="domi" name="inhabit_type" value="기숙사"/><label for="domi">기숙사거주</label><br>
        <input type="radio" id="out" name="inhabit_type" value="외부거주"/><label for="out">외부거주</label><br>
      </td>
    </tr>
  </table>
  <input type="button" onclick="location.href='list'" value="목록보기"/>
  <input type="submit" value="등록하기"/></td></tr>
</form>
</body>
</html>
