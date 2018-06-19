<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Todos for ${name}</title>
<link href="/DoIt/webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">
</head>
<body>
    <%@ include file="common/navigation.jspf" %>
    
    <div class="container">
    <h1>Your Todos are </h1>
    <table class="table table-striped">
	            <thead>
	                <tr>
	                    <th>Description</th>
	                    <th>Date</th>
	                    <th>Completed</th>
	                    <th>Modify</th>
	                </tr>
	            </thead>
	
	            <tbody>
	                <c:forEach items="${todos}" var="todo">
	                    <tr>
	                        <td>${todo.desc}</td>
	                        <td>
	                        <fmt:formatDate pattern="dd/MM/yyyy" value = "${todo.targetDate}" />
	                        </td>
	                        <td>${todo.done}</td>
	                        <td>
	                           <a href="/DoIt/update-todo?id=${todo.id }" 
                               class="btn btn-success">Update</a>
	                           <a href="/DoIt/delete-todo?id=${todo.id }" 
	                           class="btn btn-danger">Delete</a>
	                        </td>
	                    </tr>
	                </c:forEach>
	            </tbody>
	    </table>
	    
        <a class="btn btn-success" href="/DoIt/add-todo">Add a new Todo</a>
    </div>
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>