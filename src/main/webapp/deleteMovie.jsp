<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.exam.midterm.Configuration"%>
<c:set var="url" value="<%=Configuration.url%>" />
<c:set var="driver" value="<%=Configuration.driver%>" />
<c:set var="user" value="<%=Configuration.user%>" />
<c:set var="password" value="<%=Configuration.password%>" />
<sql:setDataSource var="MovieDB" driver="${driver}" url="${url}" user="${user}" password="${password}" />
<%
  String Id = request.getParameter("id");
%>

<c:set var="Id" value="<%=Integer.parseInt(Id)%>" />

<sql:update dataSource="${MovieDB}">
  DELETE FROM Movie WHERE MovieID = ${Id}
</sql:update>

<html>
<head>
  <title>Delete Movie ${Id}</title>
</head>
<body>
<h1>Movie was successfully deleted!</h1>
<br>
<a href="index.jsp">See list</a>
</body>
</html>

