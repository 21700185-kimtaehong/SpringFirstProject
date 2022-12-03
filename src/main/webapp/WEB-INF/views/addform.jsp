<%--
  Created by IntelliJ IDEA.
  User: 김태홍
  Date: 2022-12-03
  Time: 오후 8:42
  To change this template use File | Settings | File Templates.
--%>
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false"  %>
<html>
<head>
    <title>Add_restaurant</title>
</head>

<style>
    #add {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    #add td, #list th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align:center;
    }
    #add tr:nth-child(even){background-color: #f2f2f2;}
    #add tr:hover {background-color: #ddd;}
    #add th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #006bb3;
        color: white;
    }
</style>

<body>
    <h1>맛집 추가</h1>
    <form action="addok" method="post">
        <table id="add">
            <tr><td>식당명</td><td><input type="text" name="name" /></td></tr>
            <tr><td>분류</td><td><input type="text" name="type" /></td></tr>
            <tr><td>주소</td><td><input type="text" name="location" /></td></tr>
            <tr><td>휴업일</td><td><input type="text" name="dayoff" /></td></tr>
            <tr><td>대표메뉴</td><td><input type="text" name="representative" /></td></tr>
            <tr><td>별점</td><td><input type="number" name="grade" /></td></tr>
            <tr><td>한줄평</td><td><input type="text" name="evaluation" /></td></tr>
            <tr><td>사진</td><td><input type="text" name="picture" value="dd.PNG" /></td></tr>
        </table>
        <button type="button" onclick="location.href=list">취소</button>
        <button type="submit">식당 추가</button>
    </form>
</body>
</html>
