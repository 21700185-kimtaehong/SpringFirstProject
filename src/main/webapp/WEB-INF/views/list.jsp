<%--
  Created by IntelliJ IDEA.
  User: 김태홍
  Date: 2022-12-02
  Time: 오후 11:05
  To change this template use File | Settings | File Templates.
--%>
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <head>
    <title>Restaurants</title>
  </head>

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

  <body>
    <h1>맛집 소개 페이지</h1>
    <table id="list" width="90%">
      <tr>
        <th>아이디</th>
        <th>식당이름</th>
        <th>분류</th>
        <th>주소</th>
        <th>휴업일</th>
        <th>대표메뉴</th>
        <th>별점</th>
        <th>한줄평</th>
        <th>게시일</th>
        <th>식당사진</th>
        <th>수정</th>
        <th>삭제</th>
      </tr>
      <c:forEach items="${list}" var="u">
        <tr>
          <td>${u.seq}</td>
          <td>${u.name}</td>
          <td>${u.type}</td>
          <td>${u.location}</td>
          <td>${u.dayoff}</td>
          <td>${u.representative}</td>
          <td>${u.grade}</td>
          <td>${u.evaluation}</td>
          <td>${u.moDate}</td>
          <td><img src="./img/${u.picture}" width="150" /></td>
          <td><a href="editform/${u.seq}">수정</a> </td>
          <td><a href="deleteok/${u.seq}">삭제</a></td>
        </tr>
      </c:forEach>
    </table>

    <br/><a href="add">식당 추가하기</a>
  </body>
</html>
