<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false"
         pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>팀인원 정보 및 출석조회</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            let a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>팀 명단</h1>
<a href="../login/logout">로그아웃</a>
<table id="list" width="90%">
    <tr>
        <th>번호</th>
        <th>이름</th>
        <th>학번</th>
        <th>학부</th>
        <th>전화번호</th>
        <th>출결체크</th>
        <th>이메일</th>
        <th>성별</th>
        <th>거주형태</th>
        <th>수정하기</th>
        <th>삭제하기</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.name}</td>
            <td>${u.student_number}</td>
            <td>${u.major}</td>
            <td>${u.phone_number}</td>
            <td>${u.attendance}</td>
            <td>${u.mail}</td>
            <td>${u.gender}</td>
            <td>${u.inhabit_type}</td>
            <td><a href="editform/${u.seq}">수정하기</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">삭제하기</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add">팀인원 정보입력</a>
</body>
</html>