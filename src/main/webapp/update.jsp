<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.exam.midterm.Configuration"%>
<c:set var="url" value="<%=Configuration.url%>" />
<c:set var="driver" value="<%=Configuration.driver%>" />
<c:set var="user" value="<%=Configuration.user%>" />
<c:set var="password" value="<%=Configuration.password%>" />
<sql:setDataSource var="MovieDB" driver="${driver}" url="${url}" user="${user}" password="${password}" /><%
    String id = request.getParameter("id");
%>
<c:set var="id" value="<%=id%>" />

<sql:query var="results" dataSource="${MovieDB}">
    SELECT * FROM Movie WHERE MovieID = ?;
    <sql:param value="${id}"/>
</sql:query>

<html>
<head>
    <title>Update</title>
</head>
<body>
<form method="GET" action="updateMovie.jsp">
    <c:forEach items="${results.rows}" var="movie">
        <input type="hidden" name="id" value="${id}">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="${movie.Title}" required>
        <br>
        <label for="director">Director:</label>
        <input type="text" id="director" name="director" value="${movie.Director}" required>
        <br>
        <label for="releaseDate">Date:</label>
        <input type="date" id="releaseDate" name="releaseDate" value="${movie.ReleaseDate}" required>
        <br>
        <label for="rating">Rating:</label>
        <input type="number" id="rating" name="rating" step="0.1" min="0" max="10" value="${movie.Rating}" required>
        <br>
        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="10" cols="50" required>${movie.Description}</textarea>
        <br>
        <button type="submit">Submit</button>
    </c:forEach>
</form>
</body>
</html>
