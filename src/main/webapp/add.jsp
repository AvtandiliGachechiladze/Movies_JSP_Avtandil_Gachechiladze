<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add a new movie</title>
</head>
<body>
<form method="GET" action="addMovie.jsp">
  <label for="title">Title:</label>
  <input type="text" id="title" name="title" required>
  <br>
  <label for="director">Director:</label>
  <input type="text" id="director" name="director" required>
  <br>
  <label for="releaseDate">Date:</label>
  <input type="date" id="releaseDate" name="releaseDate" required>
  <br>
  <label for="rating">Rating:</label>
  <input type="number" id="rating" name="rating" step="0.1" min="0" max="10" required>
  <br>
  <label for="description">Description:</label>
  <textarea id="description" name="description" rows="10" cols="50" required></textarea>
  <br>
  <button type="submit">Submit</button>
</form>
</body>
</html>