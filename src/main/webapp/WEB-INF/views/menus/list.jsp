<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="jakarta.tags.core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  table, td {
    border : 1px solid black;
  }
</style>
</head>
<body>

<main>
  <h2>메뉴 목록 ${ msg }</h2>
  <table>
    <tr>
      <td>Menu_Id</td>
      <td>Menu_Name</td>
      <td>Menu_seq</td>
      <td>삭제</td>
      <td>수정</td>
    </tr>
    <tr>
      <td colspan="5">
        <a href="/Menus/WriteForm">메뉴등록</a>&nbsp;&nbsp;&nbsp;
        <a href="/">Home</a>
      </td>
    </tr>
    
    <c:forEach var="menu" items="${ menuList }">
    <tr>
      <td>${ menu.menu_id   }</td>
      <td>${ menu.menu_name }</td>
      <td>${ menu.menu_seq  }</td>
      <td>삭제</td>
      <td>수정</td>
    </tr>
    </c:forEach>
  </table>
  
</main>

</body>
</html>