<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<metacharset="UTF-8">
<title>Register</title>
</head>
<body>
<form:formaction="addFilmForm.do"method="POST"modelAttribute="film">
<form:labelpath="title">Title:</form:label>
<form:inputpath="title"/>
<form:errorspath="title"/>
<br/>
<form:labelpath="description">Description:</form:label>
<form:inputpath="description"/>
<form:errorspath="description"/>
<br/>
<form:labelpath="releaseYear">ReleaseYear:</form:label>
<form:inputpath="releaseYear"/>
<form:errorspath="releaseYear"/>
<br/>
<form:selectpath="languageId">Language:
<form:optionvalue="1">English</form:option>
<form:optionvalue="2">Italian</form:option>
<form:optionvalue="3">Japanese</form:option>
<form:optionvalue="4">Mandarin</form:option>
<form:optionvalue="5">French</form:option>
<form:optionvalue="6">German</form:option>
</form:select>
<form:labelpath="rentalDuration">RentalDuration:</form:label>
<form:inputpath="rentalDuration"/>
<form:errorspath="rentalDuration"/>
<br/>
<form:labelpath="length">Length:</form:label>
<form:inputpath="length"/>
<form:errorspath="length"/>
<br/>
<form:labelpath="replacementCost">ReplacementCost:</form:label>
<form:inputpath="replacementCost"/>
<form:errorspath="replacementCost"/>
<br/>
<form:labelpath="rating">Rating:</form:label>
<form:inputpath="rating"/>
<form:errorspath="rating"/>
<br/>
<form:selectpath="specialFeatures">SpecialFeatures:
<form:optionvalue="Trailers">Trailers</form:option>
<form:optionvalue="Commentaries">Commentaries</form:option>
<form:optionvalue="DeletedScenes">DeletedScenes</form:option>
<form:optionvalue="BehindtheScenes">BehindtheScenes</form:option>
<form:optionvalue="None">None</form:option>
</form:select>
<br/>
<inputtype="submit"value="Submit"/>
</form:form>
</body>
</html>