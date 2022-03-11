<%--
  Created by IntelliJ IDEA.
  User: simsunbo
  Date: 2022-03-10
  Time: 오후 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %> <%--javascript 문장을 사용하기 위해서--%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<html>
<head>
    <title>JSP 게시판 웹 사이트</title>
</head>
<body>
  <%
    UserDAO userDAO = new UserDAO();
    int result = userDAO.login(user.getUserID(), user.getUserPassword());
  %>
</body>
</html>
