<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/DoIt/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<title>Add Todo</title>

</head>
<body>
    <%@ include file="common/navigation.jspf" %>
		<div class="container">
		    <h1>Add a Todo</h1>
			<form:form method="post" commandName="todo">
			    
			    <form:hidden path="id"/>
			    <form:hidden path="user"/>
			    
			    <fieldset class="form-group">
			    <form:label path="desc">Description</form:label>
			    <form:input path="desc" type="text"
			    class="form-control" required="required" />
			    <form:errors path="desc" class="text-warning"/>
			    </fieldset>
			    <fieldset class="form-group">
                <form:label path="targetDate">Target Date</form:label>
                <form:input path="targetDate" type="text"
                class="form-control" required="required" />
                <form:errors path="targetDate" class="text-warning"/>
                </fieldset>
			    <input class="btn btn-success" type="submit" value="Submit">
			</form:form>
		</div>
	    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>