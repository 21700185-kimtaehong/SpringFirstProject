
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: 김태홍--%>
<%--  Date: 2022-12-03--%>
<%--  Time: 오후 4:55--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Edit_restaurant</title>
</head>

<style>
  #edit {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
  }
  #edit td, #list th {
    border: 1px solid #ddd;
    padding: 8px;
    text-align:center;
  }
  #edit tr:nth-child(even){background-color: #f2f2f2;}
  #edit tr:hover {background-color: #ddd;}
  #edit th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #006bb3;
    color: white;
  }
</style>

<body>
  <h1>맛집 정보 수정</h1>
  <form:form modelAttribute="boardVO" method="POST" action="../editok">
    <form:hidden path="seq"/>
<%--    <form:hidden path="moDate"/>--%>
<%--    <form:hidden path="picture"/>--%>
    <table id="edit">
      <tr><td>식당명</td><td><form:input path="name" /></td></tr>
      <tr><td>분류</td><td><form:input path="type" /></td></tr>
      <tr><td>주소</td><td><form:input path="location" /></td></tr>
      <tr><td>휴업일</td><td><form:input path="dayoff" /></td></tr>
      <tr><td>대표음식</td><td><form:input path="representative" /></td></tr>
      <tr><td>별점</td><td><form:input path="grade" /></td></tr>
      <tr><td>한줄평</td><td><form:input path="evaluation" /></td></tr>
      <tr><td>사진</td><td><form:input path="picture" /></td></tr>
<%--      사진 넣어야함--%>
    </table>
    <input type="submit" value="수정하기"/>
    <input type="button" value="취소" onclick="history.back()"/>
  </form:form>
</body>
</html>
