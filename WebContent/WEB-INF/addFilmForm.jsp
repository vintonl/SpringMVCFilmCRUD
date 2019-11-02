<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Film</title>
</head>


<body>
	<form:form action="addFilm.do" method="POST" modelAttribute="film">
		<form:label path="title">Film Title:</form:label>
		<form:input path="title" />
		<form:errors path="title" />
		<br />
		<form:label path="description">Description:</form:label>
		<form:input path="description" />
		<form:errors path="description" />
		<br />
		<form:label path="rating">Rating:</form:label>
		<form:input path="rating" />
		<form:errors path="rating" />
		<br />
		<form:label path="releaseYear">Release Year:</form:label>
		<form:input path="releaseYear" />
		<form:errors path="releaseYear" />
		<br />
		<form:label path="languageId">Language ID:</form:label>
		<form:input path="languageId" />
		<form:errors path="languageId" />
		<br />
		<form:label path="rentalDuration">Rental Duration:</form:label>
		<form:input path="rentalDuration" />
		<form:errors path="rentalDuration" />
		<br />
		<form:label path="rentalRate">Rental Rate:</form:label>
		<form:input path="rentalRate" />
		<form:errors path="rentalRate" />
		<br />
		<form:label path="replacementCost">Replacement Cost:</form:label>
		<form:input path="replacementCost" />
		<form:errors path="replacementCost" />
		<br />
		<form:label path="specialFeatures">Special Features:</form:label>
		<form:input path="specialFeatures" />
		<form:errors path="specialFeatures" />
		<br />
		<input type="submit" value="addFilm" />
	</form:form>
</body>
</html>