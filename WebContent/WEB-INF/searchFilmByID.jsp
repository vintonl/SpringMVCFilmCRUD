<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Film Results</title>
</head>
<body>
	<h1>Search Film Results</h1>
	<div class="container">
		Search Film Results:
		<c:out value="${filmId }" />
		<br>
		<c:if test="${empty film.title }">No film found</c:if>
		<c:if test="${not empty film }">
			<%-- <ul>
			<c:forEach var="item" items="${stocks}">
				<li>${item.symbol} ${item.name } <fmt:formatNumber type="currency" value="${item.price }"/></li>
			</c:forEach>
			</ul> --%>
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
				<tr>
					<td>Language:</td>
					<td>${film.language}</td>
				</tr>
				<tr>
					<td>Film ID:</td>
					<td>${film.filmId}</td>
				</tr>
				<c:if test="${empty actors }">No actors found</c:if>
				<c:if test="${not empty actors}">
					<c:forEach var="a" items="${actors}">
						<tr>
							<td>${a.firstName}</td>
							<td>${a.lastName}</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</c:if>
		<p>
			<a href="home.do" class="btn btn-secondary" role="button">Back to
				Home</a>
		</p>
	</div>
</body>
</html>
