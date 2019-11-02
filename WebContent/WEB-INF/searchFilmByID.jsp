<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Film Results</title>
</head>
<body>
	<h1>Title: ${film.title }</h1>
	<table>
		<tr>
			<td>Film Description:</td>
			<td>${film.description}</td>
		</tr>
		<tr>
			<td>Release Year:</td>
			<td>${film.releaseYear}</td>
		</tr>
		<tr>
			<td>Rating:</td>
			<td>${film.rating}</td>
		</tr>
		<tr>
			<td>Language:</td>
			<td>${film.language}</td>
		</tr>
		<tr>
			<td>Film ID:</td>
			<td>${film.filmId}</td>
		</tr>
		<c:forEach var="s" items="${actors}">
			<tr>
				<td>${s.firstName}</td>
				<td>${s.lastName}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>