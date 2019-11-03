<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film Results</title>
</head>
<body>
	<h1>Film Results</h1>
	<div class="container">
		<c:out value="${filmId }" />
		<c:if test="${empty film.title }">No film found</c:if>
		<c:if test="${not empty film }">
			<h2>Title: ${film.title }</h2>
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
				<c:choose>
					<c:when test="${film.languageID eq 0 }">
						<tr>
							<td>Language:</td>
							<td>${film.language}</td>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<td>Language ID:</td>
							<td>${film.languageID}</td>
						</tr>
					</c:otherwise>
				</c:choose>
				<tr>
					<td>Film ID:</td>
					<td>${film.filmId}</td>
				</tr>
				<tr>
					<td>Actors:</td>
					<td><c:if test="${empty film.actors }">No actors found</c:if>
						<c:if test="${not empty actors}">${actors}</c:if></td>
				</tr>
			</table>
			<form action="deleteFilm.do" method="POST">
				(Delete this film by re-entering Film ID) <input type="text" name="filmID"
					value="Film ID" > <input type="submit" value="Delete this Film" />
			</form>
		</c:if>

		<br>
		<p>
			<a href="home.do" class="btn btn-secondary" role="button">Back to
				Home</a>
		</p>
	</div>
</body>
</html>
