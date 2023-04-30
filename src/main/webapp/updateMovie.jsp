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
    String Title = request.getParameter("title");
    String Director = request.getParameter("director");
    String ReleaseDate = request.getParameter("releaseDate");
    String Rating = request.getParameter("rating");
    String Description = request.getParameter("description");
%>

<c:set var="Id" value="<%=Integer.parseInt(Id)%>" />
<c:set var="Title" value="<%=Title%>" />
<c:set var="Director" value="<%=Director%>" />
<c:set var="ReleaseDate" value="<%=ReleaseDate%>" />
<c:set var="Rating" value="<%=Rating%>" />
<c:set var="Description" value="<%=Description%>" />

<sql:update dataSource="${MovieDB}">
    UPDATE Movie
    SET Title = '${Title}',
    Director = '${Director}',
    ReleaseDate = '${ReleaseDate}',
    Rating = '${Rating}',
    Description = '${Description}'
    WHERE MovieID = ${Id};
</sql:update>

<html>
<head>
    <title>Update Movie ${Id}</title>
</head>
<body>
<h1>Movie was successfully updated!</h1>
<br>
<a href="index.jsp">See list</a>
</body>
</html>

