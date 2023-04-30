<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.exam.midterm.Configuration"%>
<c:set var="url" value="<%=Configuration.url%>" />
<c:set var="driver" value="<%=Configuration.driver%>" />
<c:set var="user" value="<%=Configuration.user%>" />
<c:set var="password" value="<%=Configuration.password%>" />
<sql:setDataSource var="MovieDB" driver="${driver}" url="${url}" user="${user}" password="${password}" />
<sql:query var="results" dataSource="${MovieDB}"> SELECT * FROM Movie; </sql:query>
<!DOCTYPE html>
<html>
  <head>
    <title>Database of Movies</title>
  </head>
  <body>
    <a href="add.jsp">
      <h3>Add New Movie</h3>
    </a>
    <h3>List of all movies:</h3>
    <table style="width: 100%">
      <tr>
        <th>MovieID</th>
        <th>Title</th>
        <th>Director</th>
        <th>ReleaseDate</th>
        <th>Rating</th>
        <th>Description</th>
      </tr>
      <c:forEach items="${results.rows}" var="movies">
        <tr>
          <th>${movies.MovieId}</th>
          <th>${movies.Title}</th>
          <th>${movies.Director}</th>
          <th>${movies.ReleaseDate}</th>
          <th>${movies.Rating}</th>
          <th>${movies.Description}</th>
          <th>
            <a href="update.jsp?id=${movies.MovieId}">UPDATE</a>
          </th>
          <th>
            <a href="deleteMovie.jsp?id=${movies.MovieId}">DELETE</a>
          </th>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>