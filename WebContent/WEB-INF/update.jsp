<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Film</title>
</head>
<body>
	<h1>Edit a film to the database</h1>
	<form:form action="getFilmFields.do" method="GET">
		<input type="text" name="filmID" value="" size="4" />
		<input type="submit" value="Get Film" />

		<c:if test="${not empty film }">

			<form:label path="title">Title:</form:label>
			<form:input path="title" value="${title}" />
			<form:errors path="title" />
			<br />

			<form:label path="description">Description:</form:label>
			<form:input path="description" value="${description}" />
			<form:errors path="description" />
			<br />

			<form:label path="releaseYear">Release Year:</form:label>
			<form:input path="releaseYear" value="${releaseYear}" />
			<form:errors path="releaseYear" />
			<br />

			<form:label path="languageID">Language:</form:label>
			<form:select path="languageID" value="${languageID}">
			<form:option value="1">English</form:option>
				<form:option value="2">Italian</form:option>
				<form:option value="3">Japanese</form:option>
				<form:option value="4">Mandarin</form:option>
				<form:option value="5">French</form:option>
				<form:option value="6">German</form:option>
			</form:select>
			<br />

			<form:label path="rentalDuration">Rental Duration:</form:label>
			<form:input path="rentalDuration" value="${rentalDuration}" />
			<form:errors path="rentalDuration" />
			<br />

			<form:label path="length">Length:</form:label>
			<form:input path="length" value="${length}" />
			<form:errors path="length" />
			<br />

			<form:label path="replacementCost">Replacement Cost:</form:label>
			<form:input path="replacementCost" value="${replacementCost}" />
			<form:errors path="replacementCost" />
			<br />

			<form:label path="rating">Rating:</form:label>
			<form:select path="rating" value="${rating}">
				<form:option value="G">G</form:option>
				<form:option value="PG">PG</form:option>
				<form:option value="PG-13">PG-13</form:option>
				<form:option value="R">R</form:option>
				<form:option value="NC-17">NC-17</form:option>
				<form:option value="n/a">n/a</form:option>
			</form:select>
			<br />

			<form:label path="specialFeatures">Special Features:</form:label>
			<form:select path="specialFeatures" value="${specialFeatures}">
		   <form:option value="Trailers">Trailers</form:option>
				<form:option value="Commentaries">Commentaries</form:option>
				<form:option value="Deleted Scenes">Deleted Scenes</form:option>
				<form:option value="Behind The Scenes">Behind the Scenes</form:option>
				<form:option value="n/a">n/a</form:option>
			</form:select>
			<br />

			<input type="submit" value="Submit" />

		</c:if>
		<br />
	</form:form>

</body>
</html>
